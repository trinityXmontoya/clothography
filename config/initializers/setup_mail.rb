ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true


ActionMailer::Base.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => "gmail.com",
      :user_name            =>  ENV['EMAIL_USERNAME'],
      :password             =>  ENV['EMAIL_PASSWORD'],
      :authentication       => "plain",
      :enable_starttls_auto => true
}

# production setup_mail.rb
#
# ActionMailer::Base.smtp_settings = {
#   :address        => 'smtp.gmail.com',
#   :port           => '587',
#   :authentication => :plain,
#   :user_name      => ENV['EMAIL_USERNAME'],
#   :password       => ENV['EMAIL_PASSWORD'],
#   :domain         => 'heroku.com'
# }
# ActionMailer::Base.delivery_method = :smtp
