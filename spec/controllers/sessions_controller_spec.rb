require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

# 	describe "POST 'create'" do
# 		it "returns http success" do
# 			get 'create'
# 			expect(response).to be_success
# 		end
# 	end
		descirbe "DELETE destroy" do
			it "detroys the requested session" do
				expect(response).to be_redirect
			end

			post

			it "redirects to rooth_path" do
			end

	end
end
