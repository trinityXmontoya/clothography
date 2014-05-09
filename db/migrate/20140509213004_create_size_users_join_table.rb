class CreateSizeUsersJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :sizes do |t|
      t.index [:user_id, :size_id]
      # t.index [:size_id, :user_id]
    end
  end
end
