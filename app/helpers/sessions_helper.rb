module SessionsHelper
	def sign_in(user)
		remember_token = User.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		user.update_attribute(:remember_token,User.encrypt(remember_token))
		self.current_user = user
	end
	
	def sign_in_company(company)
		remember_token = Company.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		company.update_attribute(:remember_token,Company.encrypt(remember_token))
		self.current_user = company
	end

	def signed_in?
		 !current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	#user
	def current_user
		remember_token = User.encrypt(cookies[:remember_token])
    	@current_user ||= User.find_by(remember_token: remember_token)
	end

	#company user
	def current_user_сompany
		remember_token = Company.encrypt(cookies[:remember_token])
    	@current_user ||= Company.find_by(remember_token: remember_token)
	end

	def sign_out
		#current_user.update_attribute(:remember_token,User.encrypt(User.new_remember_token))
		cookies.delete(:remember_token)
		self.current_user = nil
	end
	#def sign_out_company
	#	current_user.update_attribute(:remember_token,Company.encrypt(Company.new_remember_token))
	#	cookies.delete(:remember_token)
	#self.current_user = nil
	#	end
end