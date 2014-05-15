class UserMailer < ActionMailer::Base

  default from: "clothography@gmail.com"

  def send_user_token(user,login_link)
    @user = user
    @link = login_link
    mail(to: @user.email,
         subject: "Login")
  end

  def send_notification_of_sale(user,listing,listing_link)
    @user = user
    @listing = listing
    @link = listing_link
    mail(to: @user.email,
          subject: "Your item sold!")
  end

  def send_purchase_receipt(user,purchase,purchase_listing_link)
    @user = user
    @purchase = purchase
    @link = purchase_listing_link
    mail(to: @user.email,
         subject: "You receipt for item @purchase.listing.title")
  end

end
