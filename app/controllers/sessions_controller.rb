class SessionsController < ApplicationController
	def new
	end
	def create
		if params[:session][:is_firm] != '1'
    		user = User.find_by(email: params[:session][:email].downcase)
    		if user && user.authenticate(params[:session][:password])
      			sign_in(user)
     			redirect_to(user)
    		else
      			render 'new'
      			flash.now[:error] = "Invalid email/password combination"
    		end
    	else
    		company = Company.find_by(email: params[:session][:email].downcase)
    		if company && company.authenticate(params[:session][:password])
      			sign_in_company(company)
     			redirect_to(company)
    		else
      			render 'new'
      			flash.now[:error] = "Invalid email/password combination"
    		end
    	end
  	end



	def destroy
		sign_out
    	redirect_to root_url
	end
end
