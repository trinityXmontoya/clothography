class RemoveGenderColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :gender_id
  end
end
