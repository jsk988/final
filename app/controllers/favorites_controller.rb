class FavoritesController < ApplicationController
	def unlike
		Favorite.read(:user_id => params["user_id"]).read(:product_id => params["product_id"]).delete_all
		redirect_to "/favorites"
	end
end