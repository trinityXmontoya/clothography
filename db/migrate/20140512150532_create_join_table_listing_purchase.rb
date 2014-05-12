class CreateJoinTableListingPurchase < ActiveRecord::Migration
  def change
    create_join_table :listings, :purchases do |t|
      # t.index [:listing_id, :purchase_id]
      # t.index [:purchase_id, :listing_id]
    end
  end
end
