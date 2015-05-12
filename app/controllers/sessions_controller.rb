class SessionsController < ApplicationController
	def new
	end
	def create
		if params[:is_firm] != true
    		user = User.find_by(email: params[:session][:email].downcase)
    		if user && user.authenticate(params[:session][:password])
      			sign_in(user)
     			redirect_to(user)
    		else
      			flash.now[:error] = 'Invalid email/password combination'
      			render 'new'
    		end
    	else
    		company = Company.find_by(email: params[:session][:email].downcase)
    		if company && company.authenticate(params[:session][:password])
    			sign_in_company(company)
    			redirect_to(company)
    		else
       			flash.now[:error] = 'Invalid email/password combination'
      			render 'new'   			
    		end

    	end
  	end
	def destroy
		sign_out
    	redirect_to root_url
	end
end
