class AddAttachmentPhotoToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :listings, :photo
  end
end
