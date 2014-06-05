
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

  def self.conditions
    return ["New with tags", "New without tags", "Like new", "Gently used"]
  end
  validates :condition, inclusion: { in: self.conditions}

  def self.retrieve_user_sales(user)
    where(user_id: user.id).where(status: "sold")
  end

  def self.retrieve_user_available_listings(user)
    where(user_id: user.id).where(status: "available")
  end

  def self.retrieve_user_reserved_listings(user)
    where(user_id: user.id).where(status: "reserved")
  end

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

  def self.available_listings
    where(status: "available")
  end

  def retrieve_offers
    offers.where(status: 'pending')
  end

  def retrieve_accepted_offer
    offers.where(status: 'accepted')
  end

  def restore
    accepted_now_expired_offer = retrieve_accepted_offer
    user.notify_of_expired_offer(accepted_now_expired_offer)
    restore_price_before_offer
    mark_as_available
    accepted_now_expired_offer.destroy
    offers = retrieve_offers
    Offer.destroy_expired(offers)
  end
end
