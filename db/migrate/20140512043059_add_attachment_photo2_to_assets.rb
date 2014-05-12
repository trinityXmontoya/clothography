class AddAttachmentPhoto2ToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :photo2
    end
  end

  def self.down
    drop_attached_file :assets, :photo2
  end
end
