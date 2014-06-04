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
         subject: "You receipt for item #{@purchase.listing.title.capitalize}")
  end

  def send_notification_of_offer(user,offer)
    @user = user
    @offer = offer
    @offerer = offer.offerer
    mail(to: @user.email,
         subject: "#{@offerer.username.capitalize} has offered $#{@offer.amount} for your listing #{@offer.listing.title.capitalize}")
  end

  def send_notification_of_accepted_offer(user,offer)
    @user=user
    @offer = offer
    @listing = offer.listing
    mail(to: @user.email,
      subject: "Congratulations #{@user.username.capitalize}! #{@listing.user.capitalize} has accepted your offer of $#{@offer.amount} for #{@listing.title.capitalize}")
  end

   def send_notification_of_rejected_offer(user,offer)
    @user=user
    @offer = offer
    @listing = offer.listing
    mail(to: @user.email,
      subject: "Your offer of $#{@offer.amount} for #{@listing.title.capitalize} has been rejected.")
  end

end
