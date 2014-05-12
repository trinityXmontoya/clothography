class AddAttachmentPhoto1ToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :photo1
    end
  end

  def self.down
    drop_attached_file :assets, :photo1
  end
end
