require 'rails_helper'

RSpec.describe AdminsController, type: :controller do

	let(:valid_attributes){
		@valid_attributes = {
			fname:"Tristan",
			lname:"Villanueva",
			pnum:"5160000000",
			email:"tris@villgmail.com",
			content:"imapersonandyoureajoke"
		}
	}

	let(:valid_attributes_admin){
		@valid_attributes = {
			email:"tris@villgdail.com",
			password:"imajerkandyoureonetoo"
		}
	}

	describe "GET 'index'" do
		it "returns http success" do
			get 'index'
			expect(response).to be_success
		end

		# it "displays all users" do
		# 	Admin = Admin.create! valid_attributes_admin
		# 	get :index, {}
		# 	expect(assigns(:Users)).to eq([user])
		# end

	end
end
