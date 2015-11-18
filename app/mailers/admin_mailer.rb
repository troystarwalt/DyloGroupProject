class AdminMailer < ActionMailer::Base
  default from: "no-reply@dylodesigns.com"
  default to: "troy.starwalt@gmail.com"

  def new_user(user)
  	@user = user
  	mail(subject: "New User: #{user.email}")
  end

end

# Add admin emails on this page. Format "email1; email2; email3; etc..."
# Current admins: tan_vil@hotmail.com; jbardliving@gmail.com