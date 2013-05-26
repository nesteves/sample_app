require 'spec_helper'

describe "UserPages" do

	subject { page }

	describe "signup page" do
		before { visit signup_path }

		it { should have_title_and_content('Sign Up', 'Sign Up') }
	end

	describe "signup" do
		before { visit signup_path }
		let(:submit) { "Create my account" }

		describe "with invalid information" do
			it { should_not change_number_of_users }

			describe "after submission" do
				before { click_button submit }

				it { should have_title_and_content('Sign Up', 'error') }
			end
		end

		describe "with valid information" do
			before { insert_valid_signup_info }

			it { should change_number_of_users }

			describe "after saving the user" do
				before { click_button submit }
				let(:user) { get_user }

				it { should have_link('Sign out') }
				it { should have_title(user.name) }
				it { should have_success_message('Welcome') }
			end
		end
	end

	describe "profile page" do
		let(:user) { create_user }
		before { visit user_path(user) }

		it { should have_title_and_content(user.name, user.name) }
	end
end
