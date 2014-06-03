ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_url_options = {host: 'http://clothography.herokuapp.com'}


ActionMailer::Base.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => "gmail.com",
      :user_name            =>  ENV['EMAIL_USERNAME'],
      :password             =>  ENV['EMAIL_PASSWORD'],
      :authentication       => "plain",
      :enable_starttls_auto => true
}
