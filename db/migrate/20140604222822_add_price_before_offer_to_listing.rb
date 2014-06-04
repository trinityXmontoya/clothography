class AddPriceBeforeOfferToListing < ActiveRecord::Migration
  def change
    add_column :listings, :price_before_offer, :integer
  end
end
