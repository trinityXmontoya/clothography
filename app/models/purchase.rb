class Purchase < ActiveRecord::Base

  belongs_to :seller, foreign_key: 'seller_id', class_name: "User"
  belongs_to :buyer, foreign_key: 'buyer_id', class_name: "User"
  belongs_to :listing

  validates_uniqueness_of :listing_id

  validates :seller, :buyer, :listing, presence: true
  def mark_as_in_cart
    self.update(status: "in cart")
  end

  def mark_as_completed
    self.update(status: "completed")
  end

  def self.retrieve_user_cart_listings(user)
    Purchase.where(buyer_id: user.id).where(status: 'in cart')
  end

  def time_in_cart_ran_out?
    Time.now-self.created_at < 0 ? true : false
  end

end

# Purchase.where(status: 'in cart')
