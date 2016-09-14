 require "instagram"
    Instagram.configure do |config|
    config.client_id = Rails.application.secrets.INSTA_CLIENT_ID
    config.client_secret = Rails.application.secrets.INSTA_CLIENT_SECRET
 end

 
CALLBACK_URL = Rails.application.secrets.INSTA_CALL_BACK