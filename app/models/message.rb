class Message < ActiveRecord::Base
  belongs_to :sender, foreign_key: 'sender_id', class_name: "User"
  belongs_to :receiver, foreign_key: 'receiver_id', class_name: "User"

  validates :sender, :receiver, :content, presence: true

  scope :unread, -> (receiver,sender){where(receiver_id: receiver, sender_id: sender, viewed: false)}
  scope :all_correspondence, -> (sender,receiver){where(sender_id: sender, receiver_id: receiver, sender_id: receiver, receiver_id: sender)}

  def mark_as_viewed
    self.update(viewed: true)
  end

  def self.mark_all_as_viewed(receiver,sender)
    messages = Message.unread(receiver,sender)
    messages.each do |message|
      message.mark_as_viewed
    end
  end


end
