class ListingsController < ApplicationController


  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def all_site_listings
    @listings = Listing.all
  end
  
  def index
    @user = User.find(params[:user_id])
    @listings = @user.listings
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.js {}
      else
        format.html { render :new }
        format.js {}
      end
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.js {}
      else
        format.html { render :edit }
        format.js {}
      end
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.js {}
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :sale_price, :original_price, :price, :status, :condition)
    end

end
