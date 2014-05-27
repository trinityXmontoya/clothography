class AddAttachmentBgPhotoToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :bg_photo
    end
  end

  def self.down
    drop_attached_file :users, :bg_photo
  end
end
