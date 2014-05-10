class User < ActiveRecord::Base

  belongs_to :gender

  has_many :followings, foreign_key: "followed_user_id"
  has_many :followers, through: :followings, foreign_key: "follower_id"

  has_many :received_messages, class_name: 'message', foreign_key: 'receiver_id', table_name: 'messages'
  has_many :sent_messages, class_name: 'message', foreign_key: 'sender_id', table_name: 'messages'

  has_many :purchases, foreign_key: 'buyer_id'
  has_many :sales, class_name: 'purchase', foreign_key: 'seller_id', table_name: 'purchases'

  has_many :listings

  has_many :sizes, through: :size_users

  def send_login_link
    self.reset_auth_token
    link = "/login/" + self.username + "/" + self.auth_token
    UserMailer.send_user_token(self,link).deliver
    self.update_attribute(link_sent: Time.now)
  end

  def reset_auth_token
    self.update_attribute(auth_token: self.generate_token)
    self.update_attribute(auth_token_created_at: Time.now)
    self.save
  end

  def validate_token(token)
    ((token == self.auth_token) && (token.is_not_expired)) ? true : false
  end

  def is_not_expired
    ((self.link_sent - Time.now) / 1.hour).round < 48
  end

  def generate_token
    token = SecureRandom.base64(23)
    if User.where("auth_token = ?", token).exists?
      generate_token
    else
      return token
    end
  end

  #
  # def validates(validation_code)
  #   return false if validation_code.blank?
  #   ROTP::TOTP.new(self.shared_secret).verify(validation_code)
  # end



end
