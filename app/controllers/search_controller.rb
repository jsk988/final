class SearchController < ApplicationController
	def like
		Favorite.create(:user_id => params["user_id"], :product_id => params["product_id"])
		redirect_to "/search/#{params["category_id"]}"
	end

	def unlike
		Favorite.read(:user_id => params["user_id"]).read(:product_id => params["product_id"]).delete_all
		redirect_to "/search/#{params["category_id"]}"
	end
end