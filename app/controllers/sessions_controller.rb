class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.validate_token(params[:auth_token])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome" + @user.username
    else
      redirect_to login_path, notice: "Error logging in."
    end
  end

  def twitter_create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = @user.id
    if (@user.email == "")
      redirect_to edit_user(@user), notice: "Welcome" + @user.username + ", please confirm your information to complete registration."
    else
      redirect_to root_path, notice: "Welcome" + @user.username
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end

  def session_params
    params.require(:session).permit(:username,:auth_token)
  end

  protected
  def auth_hash
     request.env['omniauth.auth']
  end

end
