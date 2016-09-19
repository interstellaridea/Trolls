class Instagramapi

	def self.endpoint_maker(endpoint_to_make, sesh_token)
		url = %W{#{Instagram.endpoint} #{endpoint_to_make} access_token= #{sesh_token}}.join()
	end

	def self.callback_uri
		Rails.application.secrets.INSTA_CALLBACK_URL
	end
end