include ApplicationHelper

def insert_valid_signup_info
	fill_in "Name", 				with: "Example User"
	fill_in "Email", 				with: "user@example.com"
	fill_in "Password", 		with: "foobar"
	fill_in "Confirmation", with: "foobar"
end

RSpec::Matchers.define :change_number_of_users do
	match do |page|
		expect { click_button submit }.to change(User, :count).by(1)
	end
end

