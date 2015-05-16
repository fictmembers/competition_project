module SessionsHelper
	def sign_in(user)
			remember_token = User.new_remember_token
			cookies.permanent[:remember_token] = remember_token
			user.update_attribute(:remember_token,User.encrypt(remember_token))
			self.current_user = user
	end

	def signed_in?
		if !current_user.nil? || !current_company.nil?
			true
		else
			false
		end
	end

	def current_user=(user)
		@current_user = user
	end

	#user
	def current_user
		remember_token = User.encrypt(cookies[:remember_token])
    	@current_user ||= User.find_by(remember_token: remember_token)
	end

	def sign_out
		if current_user != nil
			current_user.update_attribute(:remember_token,User.encrypt(User.new_remember_token))
		else
			current_company.update_attribute(:remember_token,Company.encrypt(Company.new_remember_token))
		end
		cookies.delete(:remember_token)
		self.current_user = nil
	end

	def sign_in_company(company)
			remember_token = Company.new_remember_token
			cookies.permanent[:remember_token] = remember_token
			company.update_attribute(:remember_token,Company.encrypt(remember_token))
			self.current_company = company
	end

	def current_company=(company)
		@current_company = company
	end

	#user
	def current_company
		remember_token = Company.encrypt(cookies[:remember_token])
    	@current_company ||= Company.find_by(remember_token: remember_token)
	end

	def current_company=(company)
		@current_company = company
	end
end
