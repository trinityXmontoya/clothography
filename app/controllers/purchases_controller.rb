class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    @purchases = @user.purchases
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
        UserMailer.notify_user_of_sale(@purchase,@user).deliver
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
      params.require(:purchase).permit(:seller_id, :buyer_id, :listings)
    end
end
