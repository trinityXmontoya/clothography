class PurchasesController < ApplicationController
  before_action :authenticate, only: [:index, :show, :new, :edit, :update, :destroy]

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
        format.html {redirect_to user_listing_path(seller,listing), notice: "Succesfully added to cart"}
        format.js {}
      end
    else
      redirect_to user_listing_path(seller,listing), notice: "This item is already in someone's cart. Please check back within the next hour."
    end
  end

  def show
    @purchase = Purchase.find(params[:purchase_id])
  end

  def new
    @purchase = Purchase.new
  end

  # def create
  #   @purchase = Purchase.new(purchase_params)
  #   @user = Purchase.seller
  #   respond_to do |format|
  #     if @purchase.save
  #       PurchaseMailer.notify_user_of_sale(@purchase,@user).deliver
  #       format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
  #       format.js {}
  #     else
  #       format.html { render :new }
  #       format.js {}
  #     end
  #   end
  # end

  def update
    @purchase = Purchase.find(params[:id])

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



    respond_to do |format|
      if charge
        @purchase.listing.mark_as_sold
        @purchase.mark_as_completed
        format.html { redirect_to user_cart_path(current_user), notice: 'Purchase was successfully updated.' }
        format.js {}
      else
        format.html { redirect_to user_cart_path(current_user), notice: Stripe::CardError }
        format.js {}
      end
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Purchase was successfully destroyed.' }
      format.js {}
    end
  end

  private
    def purchase_params
      params.require(:purchase).permit(:id,:seller_id, :buyer_id, :listing_id)
    end
end
