class PurchasesController < ApplicationController
  before_action :authenticate
  before_action :make_sure_twitter_user_updates_info

  def index
    @user = current_user
    @purchases = @user.purchases
  end

  def cart
    @user = current_user
    @future_purchases = Purchase.retrieve_user_cart_listings(@user)
  end

  def add_to_cart
    seller = User.find_by(username: params[:user_id])
    listing = Listing.find(params[:purchase][:listing_id])
    purchase = Purchase.new(purchase_params)
    purchase.mark_as_in_cart
    if purchase.save
      respond_to do |format|
        format.html {redirect_to user_listing_path(seller,listing), notice: "#{listing.title} succesfully added to cart. You have 20 minutes to checkout."}
        format.js {}
      end
    else
      redirect_to user_listing_path(seller,listing), notice: "This item is already in someone's cart. Please check back within the next 20 minutes."
    end
  end

  def show
    @purchase = Purchase.find(params[:purchase_id])
  end

  def new
    @purchase = Purchase.new
  end

  def checkout
    @purchase = Purchase.find(params[:id])

    begin
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @purchase.listing.price * 100,
      :description => "Clothography:#{@purchase.seller.username}:#{@purchase.listing.title}",
      :currency    => 'usd',
      :metadata => {
        :customer_id    => @purchase.buyer.id,
        :customer_username => @purchase.buyer.username,
        :purchased_listing_id => @purchase.listing.id,
        :seller_id => @purchase.seller.id,
        :seller_username => @purchase.seller.username,
      }
    )

    rescue Stripe::CardError => e
       redirect_to user_cart_path(current_user), notice: e.message
       return
    end

      @purchase.listing.mark_as_sold
      @purchase.mark_as_completed
      respond_to do |format|
        format.html {redirect_to user_purchases_path(current_user), notice: 'Purchase was successfully updated.'}
        format.js {}
      end
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Item was successfully removed from cart.' }
      format.js {}
    end
  end

  private
    def purchase_params
      params.require(:purchase).permit(:id,:seller_id, :buyer_id, :listing_id)
    end
end
