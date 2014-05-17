class ProfileController < ApplicationController
	def updateprofile
		user = User.find_by("id"=>params["user_id"])
		user.update("first_name"=>params["first_name"],"last_name"=>params["last_name"])
		
		redirect_to "/profile"
	end
end