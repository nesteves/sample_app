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

def create_user
	FactoryGirl.create(:user) 
end

def get_user
	User.find_by(email: 'user@example.com')
end