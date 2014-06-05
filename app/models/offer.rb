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

  def is_expired
    ((Time.now - self.updated_at)/1.hour).round > 36
  end

  def self.has_expired_on_reserved(listing)
    time_since_offer_accepted = where(listing_id: listing.id).where(status: 'accepted').updated_at
    ((Time.now - time_since_offer_accepted) / 1.hour).round > 36
  end

  def self.destroy_expired(offers)
    offers.each do |offer|
      offer.destroy if offer.is_expired
    end
  end
end
