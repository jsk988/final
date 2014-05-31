class RatingsController < ApplicationController
	def add
		currently_use = 0
		works = 0
		oily = 0
		dry = 0
		heavy = 0
		breakout = 0
		allergic = 0

		if params["use"]=="yes"
			currently_use = true
		end

		if params["works"]=="yes"
			works = true
		end

		if params["oily"]=="yes"
			oily = true
		end

		if params["dry"]=="yes"
			dry = true
		end

		if params["heavy"]=="yes"
			heavy = true
		end
			
		if params["breakout"]=="yes"
			breakout = true
		end

		if params["allergic"]=="yes"
			allergic = true
		end
		ProductRating.create("user_id"=>cookies["user_id"], 
			"product_id"=>params["product_id"],
			"currently_use"=>currently_use,
			"works"=>works,
			"oily"=>oily,
			"dry"=>dry,
			"heavy"=>dry,
			"breakout"=>dry,
			"allergic"=>allergic,
			"review"=>params["content"])
		redirect_to "/products/show/#{params["product_id"]}"
	end
end