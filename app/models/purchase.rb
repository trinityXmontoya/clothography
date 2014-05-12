class Purchase < ActiveRecord::Base

  belongs_to :seller, foreign_key: 'seller_id', class_name: "User"
  belongs_to :buyer, foreign_key: 'buyer_id', class_name: "User"
  has_many :listings

  def mark_as_in_cart
    self.update(status: "in cart")
  end

  validates_uniqueness_of :listing_id

end
