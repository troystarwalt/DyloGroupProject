class ApplicationMailer < ActionMailer::Base
  default from: "noreply@dylodesigns.com"
  default to: "troyst83@gmail.com", "troy.starwalt@gmail.com"

  def new_user(user)
  	mail(subject: "New User: #{user.email}")
  end

end
