class Offer < ActiveRecord::Base
  belongs_to :offerer, foreign_key: 'offerer_id', class_name: "User"
  belongs_to :listing

  after_create :mark_as_pending

  validates :offerer_id, :listing_id, :amount, presence: true
  def mark_as_pending
    update(status: 'pending')
  end

  def accept
    mark_as_accepted
    self.listing.set_offer_price(self.amount)
    self.listing.mark_as_reserved
    self.offerer.notify_of_accepted_offer(self)
  end

  def mark_as_accepted
    update(status: 'accepted')
  end

  def self.num_of_pending_offers(listing)
    where(listing_id: listing.id).where(status: 'pending').count
  end

  def self.exists_between(listing,user)
    where(listing_id: listing.id).where(offerer_id: user.id).exists?
  end

end
