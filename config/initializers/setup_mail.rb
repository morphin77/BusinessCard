ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "olegkulakov77@gmail.com",
  :password             => "sad56das",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
