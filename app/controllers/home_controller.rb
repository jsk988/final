class HomeController < ApplicationController
	def index
		user = User.find_by("id" => cookies["user_id"])

		if user != nil
			redirect_to "/search"
		end
	end

end