class ProductsController < ApplicationController
	
	def like
		Favorite.create(:user_id => cookies["user_id"], :product_id => params["product_id"])
		redirect_to "/products/show/#{params["product_id"]}"
	end

	def unlike
		Favorite.read(:user_id => cookies["user_id"]).read(:product_id => params["product_id"]).delete_all
		redirect_to "/products/show/#{params["product_id"]}"
	end
end