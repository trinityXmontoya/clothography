class AddColumnGenderIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender_id, :integer
  end
end
