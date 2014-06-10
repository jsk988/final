class SessionsController < ApplicationController
	def authenticate
	    the_user = User.find_by("username" => params["username"])
	    if the_user != nil
	      if the_user["password"] == params["password"]
	        cookies["user_id"] = {"value"=>the_user.id,"expires"=>Time.now+86400}
	        redirect_to "/"
	      else
	        logger.debug the_user.inspect
	        redirect_to "/login", :notice => "Unknown password."
	      end
	    else
	      redirect_to "/login", :notice => "Unknown username."
	    end
  	end

  	def logout
	    cookies["user_id"] = nil
	    redirect_to "/"
  	end
end