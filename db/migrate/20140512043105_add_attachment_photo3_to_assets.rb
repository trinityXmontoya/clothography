class AddAttachmentPhoto3ToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :photo3
    end
  end

  def self.down
    drop_attached_file :assets, :photo3
  end
end
