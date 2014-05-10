class UserMailer < ActiveMailer::Base

  def send_user_token(user,login_link)
    @user = user
    @link = login_link
    mail(to: @user.email,
         subject: "Login")
  end
  
end
