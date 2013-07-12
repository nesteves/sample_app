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

  describe "micropost pagination" do

    before do
      35.times { FactoryGirl.create(:micropost, user: user) }
      visit root_path
    end
    after { Micropost.delete_all }

    it { should have_selector('div.pagination') }

    it "should list each micropost" do
      Micropost.paginate(page: 1).each do |micropost|
        expect(page).to have_selector('li', text: micropost.content)
      end
    end

    it { should have_content "35 microposts"}

    describe "should not display delete links for a different user" do
      let(:another_user) { create_user name: "Another User", email: "another@email.com" }
      before do
        sign_in another_user
        visit user_path(user)
      end

      it { should_not have_link "delete" }
    end
  end
end
