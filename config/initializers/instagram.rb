 require "instagram"
    Instagram.configure do |config|
    config.client_id = Rails.application.secrets.INSTA_CLIENT_ID
    config.client_secret = Rails.application.secrets.INSTA_CLIENT_SECRET
 end

 
CALLBACK_URL = "http://localhost:3000/session/callback"