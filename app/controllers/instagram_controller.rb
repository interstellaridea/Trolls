require 'instagram'
require 'httparty'
require 'ostruct'

class InstagramController < ApplicationController

	def connect
		redirect_to Instagram.authorize_url(:redirect_uri => Instagramapi.callback_uri, :scope => 'public_content')
	end

	def callback
		response = Instagram.get_access_token(params[:code], :redirect_uri => Instagramapi.callback_uri)
		session[:access_token] = response.access_token

		redirect_to :controller => 'welcome', :action => 'show'
	end
end