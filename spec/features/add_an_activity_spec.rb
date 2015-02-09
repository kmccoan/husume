require 'spec_helper'

describe "Adding an activity" do
  let!(:user) { FactoryGirl.create(:user, login: 'admin', password: 'password', password_confirmation: 'password') }

  before do
    visit login_path
    fill_in "Login", with: "admin"
    fill_in "Password", with: "password"
    click_button "Login"
  end

  it "should allow me to add an activity" do
    visit new_activity_path
    fill_in "Name", with: "Nark"
    fill_in "Photourl", with: "http://nark.com/nark.png"
    select "Sunny", from: "Weather"
    fill_in "Link", with: "http://nark.com"
    fill_in "Lat", with: 0
    fill_in "Long", with: 0
    click_button "Create Activity"
    page.should have_content "Activity Created Successfully"
  end

  context "when there are errors" do
    it "should show me errors" do
      visit new_activity_path
      fill_in "Name", with: "Nark"
      click_button "Create Activity"
      page.should have_content "Photourl can't be blank"
    end
  end
end
