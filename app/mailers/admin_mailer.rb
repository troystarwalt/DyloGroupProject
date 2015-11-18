class AdminMailer < ActionMailer::Base
  default from: "no-reply@dylodesigns.com"
  default to: "troy.starwalt@gmail.com"
  helper_method :time_format

  def new_user(user)
  	@user = user
  	mail(subject: "New User: #{user.email}")
  end

  def time_format
  	time = Time.now
  	showtime = time.to_formatted_s(:long)
  end

end

# Add admin emails on this page. Format "email1; email2; email3; etc..."
# Current admins: tan_vil@hotmail.com; jbardliving@gmail.com