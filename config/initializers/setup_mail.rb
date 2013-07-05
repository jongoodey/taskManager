ActionMailer::Base.smtp_settings = {
  :address              => "smtp.outlook.com",
  :port                 => 587,
  :user_name            => "jon@dodec.co.uk",
  :password             => "Good2Go4",
  :authentication       => "Normal password",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?