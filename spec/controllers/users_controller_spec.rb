require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	let(:valid_attributes){
		@valid_attributes = {
			fname:"Tristan",
			lname:"Villanueva",
			pnum:"5160000000",
			email:"tris@villgmail.com",
			content:"imapersonandyoureajoke"
		}
	}

	let(:invalid_attributes){
		@invalid_attributes = {
			fname: nil,
			lname: nil,
			pnum: nil,
			email: nil,
			content: nil
		}
	}

	describe "GET 'index'" do
		it "returns http success" do
			get 'index'
			expect(response).to be_success
		end
	end

	context "Valid Attributes" do
		it "should assign a record to @user" do
			post :create, {user: valid_attributes}
			expect(assigns(:user)).to eq(User.find_by_email(valid_attributes[:email]))
		end	
	end

	###===== Invalid Attributes =====###

	# context "Invalid Attributes" do
	# 	it "should assign a record to @user" do
	# 		post :create, {user: invalid_attributes}
	# 		expect(assigns(:user)).to eq(User.find_by_email(invalid_attributes[:email]))
	# 	end	
	# end
end
