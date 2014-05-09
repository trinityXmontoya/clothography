class User < ActiveRecord::Base

  belongs_to :gender

  has_many :followings, foreign_key: "followed_user_id"
  has_many :followers, through: :followings, foreign_key: "follower_id"

  has_many :received_messages, class_name: 'message', foreign_key: 'receiver_id', table_name: 'messages'
  has_many :sent_messages, class_name: 'message', foreign_key: 'sender_id', table_name: 'messages'

  has_many :purchases, foreign_key: 'buyer_id'
  has_many :sales, class_name: 'purchase', foreign_key: 'seller_id', table_name: 'purchases'


end
