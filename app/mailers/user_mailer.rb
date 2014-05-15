class UserMailer < ActionMailer::Base

  default from: "clothography@gmail.com"

  def send_user_token(user,login_link)
    @user = user
    @link = login_link
    mail(to: @user.email,
         subject: "Login")
  end

end
