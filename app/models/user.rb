class User < ActiveRecord::Base
	# validates :fname, presence: true
	validates_presence_of :fname, :message => " First name please"
	validates_presence_of :lname, :message => " Last name please"
	validates_presence_of :pnum,:message => " Enter Phone number" , length: {maximum:11},numericality: { only_integer: true }
	validates_presence_of :content, :message => "No comment here"


	after_create :send_notification

	def send_notification
		AdminMailer.new_user(self).deliver
	end

end
