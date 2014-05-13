class Purchase < ActiveRecord::Base

  belongs_to :seller, foreign_key: 'seller_id', class_name: "User"
  belongs_to :buyer, foreign_key: 'buyer_id', class_name: "User"
  belongs_to :listing

  validates_uniqueness_of :listing_id

  def mark_as_in_cart
    self.update(status: "in cart")
  end

  def mark_as_completed
    self.update(status: "completed")
  end

  def self.retrieve_user_cart_listings(user)
    Purchase.where(buyer_id: user.id).where(status: 'in cart')
  end

end
