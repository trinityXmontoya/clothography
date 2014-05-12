class PurchasesController < ApplicationController
  before_action :authenticate, only: [:index, :show, :new, :edit, :update, :destroy]

  def index
    @user = current_user
    @purchases = @user.purchases
  end

  def cart
    @user = current_user
    @purchases = @user.purchases
  end

  def add_to_cart
    seller = User.find_by(username: params[:user_id])
    listing = Listing.find(params[:listing_id])
    purchase = Purchase.new(purchase_params)
    purchase.mark_as_in_cart
    if purchase.save
      respond_to do |format|
        format.html {redirect_to [seller,listing], notice: "Hello"}
        format.js {}
      end
    else
      redirect_to [seller,listing], notice: "Error saving to cart"
    end
  end

  def show
    @purchase = Purchase.find(params[:purchase_id])
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @user = Purchase.seller
    respond_to do |format|
      if @purchase.save
        PurchaseMailer.notify_user_of_sale(@purchase,@user).deliver
        format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
        format.js {}
      else
        format.html { render :new }
        format.js {}
      end
    end
  end

  def update
    @purchase = Purchase.find(params[:id])
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
        format.js {}
      else
        format.html { render :edit }
        format.js {}
      end
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.js {}
    end
  end

  private
    def purchase_params
      params.require(:purchase).permit(:seller_id, :buyer_id, :listing_id)
    end
end
