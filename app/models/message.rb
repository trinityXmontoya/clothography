class Message < ActiveRecord::Base
  belongs_to :sender, foreign_key: 'sender_id', class_name: "User"
  belongs_to :receiver, foreign_key: 'receiver_id', class_name: "User"

  validates :sender, :receiver, :content, presence: true
end
