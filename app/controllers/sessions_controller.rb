class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.validate_token(params[:auth_token])
      session[:username] = @user.username
      redirect_to root_path, notice: "Welcome" + @user.username
    else
      redirect_to login_path, notice: "Error logging in."
    end
  end

  def destroy
    session[:username] = nil
    redirect_to root_path, notice: "Logged out"
  end

  def session_params
    params.require(:session).permit(:username,:auth_token)
  end

end
