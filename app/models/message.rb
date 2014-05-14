class Message < ActiveRecord::Base
  belongs_to :sender, foreign_key: 'sender_id', class_name: "User"
  belongs_to :receiver, foreign_key: 'receiver_id', class_name: "User"

  validates :sender, :receiver, :content, presence: true

  def self.retrieve_all_correspondence(sender,receiver)
    self.where(sender_id: sender).where(receiver_id: receiver) + self.where(sender_id: receiver).where(receiver_id: sender)
  end

  def self.find_unread_messages(receiver,sender)
    where(receiver_id: receiver).where(sender_id: sender).where(viewed: false)
  end

  def mark_as_viewed
    self.update(viewed: true)
  end

  def self.mark_all_as_viewed(receiver,sender)
    messages = Message.find_unread_messages(receiver,sender)
    messages.each do |message|
      message.mark_as_viewed
    end
  end


end
