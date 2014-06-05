namespace :check do

  task :listing_reservation_status => :environment do
    desc "restore listings with expired reservations"
    listings = Listing.where(status: 'reserved')
    listings.each do |listing|
      if Offer.has_expired_on_reserved(listing)
        listing.restore
      end
    end
  end

  task :offer_status => :environment do
    desc "delete expired offers"
    offers = Offer.where(status: 'pending')
    Offer.destroy_expired(offers)
  end

end
