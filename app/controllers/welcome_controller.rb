class WelcomeController < ApplicationController
  def index
  	redirect_to :controller => 'instagram', :action => 'connect' if !session[:access_token]

  	client = Instagram.client(:access_token => session[:access_token])
    @user = client.user
    @recent_media_items = client.user_recent_media

  end

  def show
  end




end
