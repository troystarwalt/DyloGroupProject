# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Only for development
require 'faker'

User.destroy_all
Admin.destroy_all

# Used in development only.
2.times do |index|
User.create!(
 	fname: Faker::Name.first_name, 
 	lname: Faker::Name.last_name,
 	pnum: "1234567849",
 	email: Faker::Internet.email,
 	content: Faker::Lorem.paragraph)
end

Admin.create(
	email: "troy.starwalt@gmail.com",
	password: "slayer"
	)

p "Created #{User.count} users"