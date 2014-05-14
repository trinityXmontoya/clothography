class ReomveSalePriceColumnFromListing < ActiveRecord::Migration
  def change
    remove_column :listings, :sale_price
  end
end
