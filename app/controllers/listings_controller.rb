class ListingsController < ApplicationController


  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def all_site_listings
    @query= Listing.search(params[:q])
    
    if (params[:tag])
      @listings = Listing.tagged_with(params[:tag])
    else
      @listings = @query.result(distinct:true).includes(:category,:size,:brand,:gender)
    end
    @standard_sizes = Size.standard_sizes
    @jean_sizes = Size.jean_sizes
    @bottoms_sizes = Size.bottom_sizes
    @shoe_sizes = Size.shoe_sizes
  end

  def index
    @user = User.find_by_username(params[:user_id])
    @listings = @user.listings
  end

  def user_closet
    @user = User.find_by_username(params[:user_id])
    @listings = Listing.retrieve_user_available_listings(@user)
    @sales = Listing.retrieve_user_sales(@user)
    @message = Message.new
  end

  def show
    @message = Message.new
    @purchase = Purchase.new
    @offer = Offer.new
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
    @listing.build_asset
    @standard_sizes = Size.standard_sizes
    @jean_sizes = Size.jean_sizes
    @bottoms_sizes = Size.bottom_sizes
    @shoe_sizes = Size.shoe_sizes
  end

  def create
      @listing = Listing.new(listing_params)
      @listing.user = User.find_by_username(params[:user_id])
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
    if @listing.has_been_sold?
      redirect_to [@user,@listing], notice: "This item has been sold, you cannot perform this action."
    else
      @listing.build_asset
      @standard_sizes = Size.standard_sizes
      @jean_sizes = Size.jean_sizes
      @bottoms_sizes = Size.bottom_sizes
      @shoe_sizes = Size.shoe_sizes
    end
  end

  def update
    @listing = Listing.find(params[:id])
    @user = @listing.user
    if @listing.has_been_sold?
      redirect_to [@user,@listing], notice: "This item has been sold, you cannot perform this action."
    else
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
  end

  def destroy
    @listing = Listing.find(params[:id])
    @user = @listing.user
    if @listing.has_been_sold?
      redirect_to [@user,@listing], notice: "This item has been sold, you cannot perform this action."
    else
      @listing.destroy
      respond_to do |format|
        format.html { redirect_to  user_listings_path(@user), notice: 'Listing was successfully destroyed.' }
        format.js {}
      end
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :original_price, :price, :condition,:tag_list, asset_attributes: [:id, :photo1, :photo2, :photo3])
    end

end
