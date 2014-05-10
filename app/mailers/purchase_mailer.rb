class PurchaseMailer < ActionMailer::Base
  default from: "clothography@gmail.com"

  def notify_user_of_sale(purchase,seller)
    @purchase = purchase
    @seller = seller
    @listings = @purchase.listings.collect do |listing|
      Listing.find(listing)
    end
    mail(to: @user.email,
         subject: "Congratulations! Your item sold.")
  end

end
