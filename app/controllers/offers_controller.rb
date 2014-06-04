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

  def accept_offer
    offer = Offer.find(params[:offer_id])
    offer.accept
    Purchase.add_item_to_cart(offer.offerer, offer.listing)
    respond_to do |format|
      format.html { redirect_to user_listing_path(offer.listing.user,offer.listing), notice: "You have accepted an offer of $#{offer.amount} for this listing. #{offer.offerer} has been notified and has 24 hours to respond."}
      format.js {}
    end
  end

  def destroy
    offer = Offer.find(params[:id])
    listing = offer.listing
    offer.offerer.notify_of_rejected_offer(offer)
    offer.destroy
    respond_to do |format|
      format.html { redirect_to user_listing_path(listing.user,listing), notice: 'Offer successfully rejected.' }
      format.js {}
    end
  end

  private
  def offer_params
    params.require(:offer).permit(:id,:offerer_id, :amount)
  end
end
