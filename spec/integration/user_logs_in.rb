require 'spec_helper'

describe "user logs in" do
  it "should log in successfully" do
    Factory(:user)
    visit root_path
    click_link "Login"
    fill_in "Username", :with => "chunkybacon"
    fill_in "Password", :with => "P@ssword"
    click_button "Sign in"
    page.should have_content("Successfully logged in.")
  end
end