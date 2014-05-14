class Message < ActiveRecord::Base
  belongs_to :sender, foreign_key: 'sender_id', class_name: "User"
  belongs_to :receiver, foreign_key: 'receiver_id', class_name: "User"

  validates :sender, :receiver, :content, presence: true

  def self.retrieve_all_correspondence(sender,receiver)
    where(sender_id: sender).where(receiver_id: receiver) +
    where(sender_id: receiver).where(receiver_id: sender)
  end
  
end
