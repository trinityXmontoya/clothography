class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.string :listings, array: true, default: '{}'

      t.timestamps 
    end
  end
end
