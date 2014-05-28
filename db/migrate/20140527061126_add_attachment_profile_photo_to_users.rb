class AddAttachmentProfilePhotoToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :profile_photo
    end
  end

  def self.down
    drop_attached_file :users, :profile_photo
  end
end
