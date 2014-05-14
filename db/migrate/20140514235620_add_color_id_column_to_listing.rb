class AddColorIdColumnToListing < ActiveRecord::Migration
  def change
    add_column :listings, :color_id, :integer, references: :color
  end
end
