class MessagesController < ApplicationController

  def index
    @user = User.find_by(username: params[:user_id])
    @sent_messages = @user.sent_messages
    @received_messages = @user.received_messages
  end

  def show
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
