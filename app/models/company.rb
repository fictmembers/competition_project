class Company < ActiveRecord::Base
	before_save {self.email = email.downcase}
	before_create :create_remember_token
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name,    presence: true	,length: {maximum: 30}		# Company's name shouldn't be blank
	validates :manager, presence: true	,length: {maximum: 30}		# Company should have manager
	validates :email, presence: true    ,format: { with: VALID_EMAIL_REGEX },
			   uniqueness: { case_sensitive: false }	   
    
	has_secure_password
	validates :password, length: {minimum: 6}	
	def Company.new_remember_token
    	SecureRandom.urlsafe_base64
    end

  	def Company.encrypt(token)
    	Digest::SHA1.hexdigest(token.to_s)
  	end
	private

	def create_remember_token
		self.remember_token = Company.encrypt(Company.new_remember_token)
	end
end
