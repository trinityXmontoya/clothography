class RemoveColumnsProfilePhotoAndBgPhotoFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :profile_photo
    remove_column :users, :bg_photo
  end
end
