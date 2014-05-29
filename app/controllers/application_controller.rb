class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :unread_inbox_count, :cart_count
  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end

  def authenticate
    unless current_user
      redirect_to root_path, notice: "You must login to perform that action"
    end
  end

  def unread_inbox_count
    current_user.unread_messages.count
  end

  def cart_count
    current_user.items_in_cart.count
  end

end
