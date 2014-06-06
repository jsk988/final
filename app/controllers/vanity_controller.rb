class VanityController < ApplicationController
	def remove
		ProductRating.find_by("id"=>params["product_rating_id"]).update("currently_use"=>false)
		redirect_to "/vanity"
	end
end