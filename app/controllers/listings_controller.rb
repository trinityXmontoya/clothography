class ListingsController < ApplicationController


  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def all_site_listings
    @listings = Listing.all
    @results = session[:search_results]
  end

  def index
    @user = User.find_by_username(params[:user_id])
    @listings = @user.listings
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
    @listing.build_asset
  end

  def create
      @listing = Listing.new(listing_params)
      @listing.user = User.find_by_username(params[:user_id])
      @listing.status = "unsold"
      respond_to do |format|
        if @listing.save
          format.html { redirect_to user_listing_path(@listing.user, @listing), notice: 'Listing was successfully created.' }
          format.js {}
        else
          format.html { render :new }
          format.js {}
        end
      end
  end

  def edit
    @listing = Listing.find(params[:id])
    @user = @listing.user
  end

  def update
    @listing = Listing.find(params[:id])
    if listing_params[:photo]
      @listing.photo = nil
    else
      @listing.photo = @listing.photo
    end
    @user = @listing.user
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to user_listing_path(@user, @listing), notice: 'Listing was successfully updated.' }
        format.js {}
      else
        format.html { render :edit }
        format.js {}
      end
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @user = @listing.user
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to @user.listings, notice: 'Listing was successfully destroyed.' }
      format.js {}
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :original_price, :price, :condition, asset_attributes: [:photo1, :photo2, :photo3])
    end

end
