module CompaniesHelper
	def gravatar_for(company)
		gravatar_id = Digest::MD5::hexdigest(company.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: company.name, class: "gravatar")
	end
end
