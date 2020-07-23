ActionMailer::Base.smtp_settings = {
  user_name: Rails.application.credentials.send_grid[:user_name],
  password: Rails.application.credentials.send_grid[:password],
  domain: Rails.application.credentials.send_grid[:domain],
  address: Rails.application.credentials.send_grid[:address],
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
