# class ChargesController < ApplicationController
#
#   def new
#   end
#
#   def create
#
#     customer = Stripe::Customer.create(
#       :email => charge_params[:stripeEmail],
#       :card  => charge_params[:stripeToken]
#     )
#
#     charge = Stripe::Charge.create(
#       :customer    => customer.id,
#       :amount      => @purchase.price * 100,
#       :description => "Clothography:#{@purchase.seller.username}:#{@purchase.listing.title}",
#       :currency    => 'usd'
#     )
#
#   rescue Stripe::CardError => e
#     flash[:error] = e.message
#     redirect_to charges_path
#   end
#
#   private
#   def charge_params
#     params.require(:charge).permit(:description,:amount,:key,:stripeEmail,:stripeToken)
#   end
# end
