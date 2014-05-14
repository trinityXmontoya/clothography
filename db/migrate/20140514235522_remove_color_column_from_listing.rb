class RemoveColorColumnFromListing < ActiveRecord::Migration
  def change
    remove_column :listings,:color
  end
end
