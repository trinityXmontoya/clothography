class User < ActiveRecord::Base

  before_create :set_dummy_email

  has_many :listings, dependent: :destroy
  has_many :sizes, through: :size_users

  has_many :proposed_offers, class_name: 'Offer', foreign_key: 'offerer_id', table_name: 'offers'

  has_many :followings, foreign_key: "followed_user_id"
  has_many :followers, through: :followings, foreign_key: "follower_id"

  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id', table_name: 'messages'
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id', table_name: 'messages'

  has_many :purchases, foreign_key: 'buyer_id', dependent: :destroy
  has_many :sales, class_name: 'purchase', foreign_key: 'seller_id', table_name: 'purchases'

  validates :username, :email, presence: true

  acts_as_tagger

  def to_param
    username
  end

  def set_dummy_email
    self.email ||= ""
  end

  def self.find_or_create_from_auth_hash(auth_hash)
     where(auth_hash.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth_hash.provider
      user.uid = auth_hash.uid
      user.oauth_token = auth_hash.credentials.token
      user.name = auth_hash.info.name
      user.username = user.username || "Twitter-User-#{auth_hash.uid}"
      user.profile_photo = user.profile_photo || auth_hash.info.image
      user.bg_photo = user.bg_photo || auth_hash.extra.profile_background_image_url
      user.save!
    end
  end

  def send_login_link
    self.reset_auth_token
    link = "localhost:3000/login/" + self.username + "/" + self.auth_token
    UserMailer.send_user_token(self,link).deliver
    self.update_attributes(login_link_sent: Time.now)
  end

  def reset_auth_token
    self.update_attributes(auth_token: self.generate_token)
    self.update_attributes(auth_token_created_at: Time.now)
    self.save
  end

  def validate_token(token)
    ((token == self.auth_token) && (self.token_is_not_expired)) ? true : false
  end

  def token_is_not_expired
    ((self.login_link_sent - Time.now) / 1.hour).round < 48
  end

  def generate_token
    token = SecureRandom.base64(23)
    User.where("auth_token = ?", token).exists? ? generate_token : token
  end


end
