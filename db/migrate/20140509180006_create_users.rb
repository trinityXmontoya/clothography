class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :name
      t.string :password
      t.string :auth_token
      t.string :oauth_token
      t.integer :uid
      t.datetime :auth_token_created_at
      t.string :profile_photo
      t.string :bg_photo
      t.references :gender, index: true

      t.timestamps
    end
  end
end
