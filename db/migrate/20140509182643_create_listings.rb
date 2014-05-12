class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user, index: true
      t.references :brand, index: true
      t.references :category, index: true
      t.references :size, index: true
      t.references :gender, index: true
      t.string :title
      t.string :description
      t.integer :main_photo
      t.integer :sale_price
      t.integer :original_price
      t.integer :price
      t.string :status
      t.string :condition
      t.integer :discount

      t.timestamps
    end
  end
end
