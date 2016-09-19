class WelcomeController < ApplicationController
	
	def index
	end

	def show
		@media = get_recent_media
	end

	def get_recent_media
		url = Instagramapi.endpoint_maker('users/3258608139/media/recent/?', session[:access_token])
		feed_response = HTTParty.get(url).parsed_response
		create_structure feed_response['data']
		# @time = Benchmark.realtime {create_structure(feed_response['data']) }
	end

	def create_structure(items = [])
		items.collect{ |x| OpenStruct.new x.to_h }
	end

end