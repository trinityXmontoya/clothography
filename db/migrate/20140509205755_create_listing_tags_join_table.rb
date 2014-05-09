class CreateListingTagsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :tags, :listings do |t|
      t.index [:listing_id, :tag_id]
    end
  end
end
