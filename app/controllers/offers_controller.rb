class OffersController < ApplicationController

  def make_offer
  # listing = Listing.find(offer_params[:listing_id])
    @offer = Offer.new(offer_params)
      if @offer.save
      #   redirect_to user_listing_path(listing.user,listing), notice: "Your offer has been made! #{listing.user.username.capitalize} has 36hrs to accept."
      # else
      #   redirect_to user_listing_path(listing.user,listing), notice: "There was an error saving your offer."
      # end
      redirect_to root_path, notice: "Your offer has been made! #{listing.user.username.capitalize} has 36hrs to accept."
    else
      redirect_to root_path, notice: "There was an error saving your offer."
    end
  end

  private
  def offer_params
    params.require(:offer).permit(:listing_id,:offerer_id, :amount)
  end
end
