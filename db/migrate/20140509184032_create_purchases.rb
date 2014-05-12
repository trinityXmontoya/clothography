class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.references :listing

      t.timestamps
    end
  end
end
