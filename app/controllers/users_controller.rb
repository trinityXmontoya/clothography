class UsersController < ApplicationController

  before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_username(params[:id])
    @sales_count = Listing.retrieve_user_sales(@user).count
    @message = Message.new
  end

  def new
    @user = User.new
  end

  def create
    if User.find_by(username: user_params[:username]).exists?
      redirect_to new, notice: "Sorry this username is taken."
    elsif User.find_by(email: user_params[:email]).exists?
      redirect_to new, notice: "Sorry this email is already signed up."
    else
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        @user.send_login_link
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.js{}
      else
        format.html { render :new }
        format.js{}
      end
    end
  end
  end

  def edit
    @user = User.find_by_username(params[:id])
  end

  def update
    @user = User.find_by_username(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.js {}
      else
        format.html { render :edit }
        format.js {}
      end
    end
  end

  def destroy
    @user = User.find_by_username(params[:id])
    @user.destroy
    session[@user.id] = nil
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
      # else
      #   redirect_to users_url, notice: "You are not authorized to perform that action"
      # end
  end

  private
    def user_params
      params.require(:user).permit(:email, :username, :name, :password, :profile_photo, :bg_photo, :gender_id)
    end

end
