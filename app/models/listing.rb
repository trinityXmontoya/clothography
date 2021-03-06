
class Listing < ActiveRecord::Base

  belongs_to :user
  belongs_to :brand
  belongs_to :category
  belongs_to :size
  belongs_to :gender
  belongs_to :color
  has_one :purchase
  has_one :asset
  accepts_nested_attributes_for :asset, allow_destroy: true
  has_many :offers
  acts_as_taggable_on :tags

  validates :user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :price, :condition, presence: true
  validates :price, :original_price, numericality: { only_integer: true }

  after_create :mark_as_available, :calculate_discount, :set_price_before_offer

  scope :sold, -> (user) {where(user_id: user.id, status: "sold")}
  scope :availables, -> (user) {where(user_id: user.id, status: "available")}
  scope :reserved, -> (user) {where(user_id: user.id, status: "reserved")}

  scope :available, -> {where(status: "available")}

  scope :offers, -> {joins(:offers).where(status: 'pending')}
  scope :accepted_offers, -> {joins(:offers).where(status: 'accepted')}

  def self.conditions
    return ["New with tags", "New without tags", "Like new", "Gently used"]
  end
  validates :condition, inclusion: { in: self.conditions}

  def calculate_discount
    if original_price && original_price > price
      amount_discounted = (price / original_price)*100
      self.update(discount: amount_discounted)
    end
  end

  def set_price_before_offer
    self.update(price_before_offer: self.price)
  end

  def set_offer_price(amount)
    set_price_before_offer
    self.update(price: amount)
  end

  def restore_price_before_offer
    self.update(price: price_before_offer)
  end

  def mark_as_available
    self.update(status: "available")
  end

  def mark_as_sold
    self.update(status: "sold")
    self.user.notify_of_sale(self)
  end

  def mark_as_reserved
    self.update(status: "reserved")
  end

  def has_been_sold
    self.status == "sold"
  end

  def is_reserved
    self.status == 'reserved'
  end

  def restore
    accepted_now_expired_offer = accepted_offers
    user.notify_of_expired_offer(accepted_now_expired_offer)
    restore_price_before_offer
    mark_as_available
    accepted_now_expired_offer.destroy
    offers = retrieve_offers
    Offer.destroy_expired(offers)
  end
end
