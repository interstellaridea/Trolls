require 'instagram'
require 'httparty'
require 'ostruct'

class InstagramController < ApplicationController

	def connect
		#binding.pry
		#redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL, :scope => 'public_content')
		redirect_to Instagram.authorize_url(:client_secret => Instagram.client_secret, :redirect_uri => CALLBACK_URL, :scope => 'public_content')
	end

	def callback
		response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
		session[:access_token] = response.access_token

		redirect_to :controller => 'welcome', :action => 'show'
	end
end