class Messager < ActionMailer::Base
  default from: "notreplycheckcompitence@gmail.com"

  def sample_email(user)
  	@user = user
  	mail(to: @user.email, subject: 'Sample EMAIL')
  end
end
