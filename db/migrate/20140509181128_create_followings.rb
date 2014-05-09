class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings, id:false do |t|
      t.integer :followed_user_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
