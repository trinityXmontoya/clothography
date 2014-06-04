class OffersController < ApplicationController

  def make_offer
    listing = Listing.find(params[:listing_id])
    offer = Offer.new(offer_params)
    offer.listing = listing
      if offer.save
        listing.user.notify_of_pending_offer(offer)
        redirect_to user_listing_path(listing.user,listing), notice: "Your offer has been made! #{listing.user.username.capitalize} has 36hrs to accept."
      else
        redirect_to user_listing_path(listing.user,listing), notice: "There was an error saving your offer."
      end
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.mark_as_accepted
    @offer.offerer.notify_of_accepted_offer
    listing.delete_all_other_offers
    respond_to do |format|
      format.html { redirect_to offer.listing, notice: 'Item was successfully removed from cart.' }
      format.js {}
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    listing= offer.listing
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to listing, notice: 'Item was successfully removed from cart.' }
      format.js {}
    end
  end

  private
  def offer_params
    params.require(:offer).permit(:offerer_id, :amount)
  end
end
