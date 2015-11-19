class User < ActiveRecord::Base
	validates :fname, presence:true 
	validates :lname, presence:true
	validates :pnum, presence: true, length: {maximum:11},numericality: { only_integer: true }
	validates :content, presence:true

	# after_create :send_notification

	# def send_notification
	# 	AdminMailer.new_user(self).deliver
	# end

end
