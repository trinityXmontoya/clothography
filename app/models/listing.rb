class Listing < ActiveRecord::Base

  belongs_to :user
  belongs_to :brand
  belongs_to :category
  belongs_to :size
  belongs_to :gender
  belongs_to :purchase
  has_one :asset, inverse_of: :listing
  accepts_nested_attributes_for :asset, allow_destroy: true

  has_many :tags, foreign_key: 'listing_id', table_name: 'listing_tags'

  validates :user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :price, :condition, presence: true
  validates :price, :original_price, numericality: { only_integer: true }

  def self.conditions
    return ["New with tags", "New without tags", "Like new", "Gently used"]
  end

  validates :condition, inclusion: { in: self.conditions}

  def calculate_discount
    if original_price && original_price > price
      amount_discounted = (self.price / self.original_price)
      self.update(discount: amount_discounted)
    end
  end

  def mark_as_available
    self.update(status: "available")
  end


end
