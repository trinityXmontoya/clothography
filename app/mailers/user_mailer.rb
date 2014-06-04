class UserMailer < ActionMailer::Base

  default from: "clothography@gmail.com"

  def send_user_token(user,login_link)
    @user = user
    @link = root_url + login_link
    mail(to: @user.email,
         subject: "Login")
  end

  def send_notification_of_sale(user,listing)
    @user = user
    @listing = listing
    mail(to: @user.email,
          subject: "Your item sold!")
  end

  def send_purchase_receipt(user,purchase)
    @user = user
    @purchase = purchase
    mail(to: @user.email,
         subject: "You receipt for item #{@purchase.listing.title}")
  end

  def send_notification_of_offer(user,offer)
    @user = user
    @offer = offer
    @offerer = offer.offerer
    mail(to: @user.email,
         subject: "#{@offerer.username} has offered $#{@offer.amount} for your listing #{@offer.listing.title}")
  end

end
