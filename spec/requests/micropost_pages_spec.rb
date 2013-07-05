require 'spec_helper'

describe "Micropost pages" do
  
  subject { page }

  let(:user) { create_user }
  before { sign_in user }

  describe "micropost creation" do
  	before { visit root_path }

  	describe "with invalid information" do

  		it { should_not change_number_of_microposts }

  		describe "error messages" do
  			before { click_button "Post" }
  			it { should have_content('error') }
  		end
  	end

  	describe "with valid information" do
  		before { fill_in 'micropost_content', with: "Lorem ipsum" }

  		it { should change_number_of_microposts }
  	end
  end

  describe "micropost destruction" do
    before { create_micropost(user) }

    describe "as correct user" do
      before { visit root_path }

      it "should delete a micropost" do
        expect { click_link "delete" }.to change(Micropost, :count).by(-1)
      end
    end
  end
end
