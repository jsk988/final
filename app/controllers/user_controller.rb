class UserController < ApplicationController
	def updateprofile
		user = User.find_by("id"=>cookies["user_id"])
		user.update("first_name"=>params["first_name"],
					"last_name"=>params["last_name"],
					"email"=>params["email"],
					"city"=>params["city"],
					"skintype_id"=>params["skintype"])
		
		redirect_to "/profile"
	end

	def create
	    existing_username = User.find_by("username" => params["username"])
	    existing_email = User.find_by("email" => params["email"])

	    logger.debug params["username"]

	    if (params["username"] == "") || (params["password"] == "") || (params["first_name"] == "") || (params["email"] == "")
	    	@message = "Please fill in all required fields"
	    	render "/user/new"
	    elsif (existing_username == nil) && (existing_email==nil)
	      	User.create("username" => params["username"],
	                  "password" => params["password"],
	                  "first_name" => params["first_name"],
	                  "last_name" => params["last_name"])
	      	cookies["user_id"] = User.last["id"]
	      	redirect_to "/"
	    else
	    	user =""
	    	email =""
	    	if existing_username != nil
	      		user = "Username"
	      	end
	      	if existing_email !=nil
	      		email = "Email"
	      	end
	      	@message = user + " " + email + " taken.  Please try again."
	      	render "/user/new"
	    end
  	end
end