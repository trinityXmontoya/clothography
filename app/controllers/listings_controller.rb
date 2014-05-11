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
    @standard_sizes = Size.retrieve_standard_sizes
    @jean_sizes = Size.retrieve_jean_sizes
    @bottoms_sizes = Size.retrieve_bottom_sizes
    @listing = Listing.new
  end

  def create
    if (params[:listing][:photo_file_path])
      @listing = Listing.new(listing_params)
      @listing.update_attributes(status: "unsold")
      respond_to do |format|
        if @listing.save
          paperclip_file_path = "#{:rails_root}/assets/listings/#{@listing.user_id}/attached_files/#{@listing.id}/#{params[:listing][:photo_file_name]}"
          raw_source = params[:listing][:photo_file_path]
          Listing.copy_and_delete(paperclip_file_path, raw_source)

          format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
          format.js {}
        else
          format.html { render :new }
          format.js {}
        end
      end
    else
        format.html { render :new }
        format.js {}
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
      params.require(:listing).permit(:user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :original_price, :price, :condition)
    end

end
