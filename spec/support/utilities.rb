include ApplicationHelper

RSpec::Matchers.define :have_title_and_content do |title, content_text=''|
	match do |page|
		expect(page).to have_title(full_title(title)) && have_content(content_text)
	end
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-success', text: message)
  end
end

def create_user(options={})
  options = {name: "Michael Hartl", email: "michael@example.org"}.merge options
	FactoryGirl.create(:user, name: options[:name], email: options[:email])
end

def insert_valid_signup_info
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirmation", with: "foobar"
end

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well
  cookies[:remember_token] = user.remember_token
end

def get_user
	User.find_by(email: 'user@example.com')
end

RSpec::Matchers.define :change_number_of_users do
  match do |page|
    expect { click_button submit }.to change(User, :count).by(1)
  end
end