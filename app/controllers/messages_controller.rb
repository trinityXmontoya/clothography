class MessagesController < ApplicationController

  def index
    @user = User.find_by(username: params[:user_id])
    # @sent_messages = @user.sent_messages.order(created_at: :asc)
    # # @sent_messages = @user.sent_messages.uniq(&:receiver_id)
    # @sent_messages= Message.group(:sender_id).group(:receiver_id).order(created_at: :asc)
    @sent_messages = @user.sent_messages.select('DISTINCT ON (receiver_id) *')
                                               .order('receiver_id, messages.created_at DESC')
    @received_messages = @user.received_messages.select('DISTINCT ON (sender_id) *')
                                                 .order('sender_id, messages.created_at DESC')

end

  def show
    message = Message.find(params[:id])
    sender = message.sender
    receiver = message.receiver
    @user = sender
    @messages = Message.retrieve_all_correspondence(sender, receiver).reverse
    Message.mark_all_as_viewed(current_user,sender)
    @message = Message.new
  end

  def new

  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to user_messages_path(@message.sender), notice: "message sent"
    else
      redirect_to user_messages_path(@message.sender), notice: "message not sent"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def message_params
    params.require(:message).permit(:receiver_id,:sender_id,:content)
  end

end
