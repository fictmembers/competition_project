module UsersHelper
	def gravatar_for(user)
    	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    	gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    	image_tag(gravatar_url, alt: user.name, class: "gravatar")
  	end

  	def user_speciality
  		list_of_speciality = ["Computer Science", "Software Engineering", "Computer Engineering"]
		s = ''
		list_of_speciality.each do |spec|
			s << "<option value='#{spec}'>#{spec}</option>"
		end
		s.html_safe
	end

	def user_education
  		course =  Hash[
  			"1-й курс" => 1,
  			"2-й курс" => 2,
  			"3-й курс" => 3,
  			"4-й курс" => 4,
  			"5-й курс" => 5,
  			"Абітурієнт" => 0,
  			"Студент"  => 6			
  			]
		s = ''

		course.each {|key, value| 
			s << "<option value='#{value}'>#{key}</option>"
		}
		s.html_safe
	end
end
