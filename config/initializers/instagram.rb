Instagram.configure do |config|
  config.client_id = Rails.application.secrets.INSTA_CLIENT_ID
  config.client_secret = Rails.application.secrets.INSTA_CLIENT_SECRET
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end
# @CALLBACK_URL = Rails.application.secrets.INSTA_CALLBACK_URL