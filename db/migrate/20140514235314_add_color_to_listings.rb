class AddColorToListings < ActiveRecord::Migration
  def change
    add_column :listings, :color, :string
  end
end
