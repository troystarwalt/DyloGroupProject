class AdminMailer < ActionMailer::Base
	default from: "no-reply@dylodesigns.com"
	default to: "troy.starwalt@gmail.com"

	def mandrill_client
		@mandrill_client ||= Mandrill::API.new MANDRILL_API_KEY
	end

	def new_user(user)
		template_name = "dylo-design"
		template_content = []
		message = {
			to: [{email: "troy.starwalt@gmail.com"},
				{email: "tan_vil@hotmail.com"},
				{email: "jbardliving@gmail.com"}
				],
			subject: "New Quote Request From: #{user.email}",
			merge_vars: [
				{rcpt: "troy.starwalt@gmail.com",
					vars: [
						{name: "LATEST_USER", content: user.fname + " " + user.lname},
						{name: "LATEST_USER_EMAIL", content: user.email},
						{name: "LATEST_USER_CONTENT", content: user.content}
					]
				}
			]
		}
		mandrill_client.messages.send_template template_name, template_content, message
	end

end

# Add admin emails on this page. Format "email1; email2; email3; etc..."
# Current admins: tan_vil@hotmail.com; jbardliving@gmail.com