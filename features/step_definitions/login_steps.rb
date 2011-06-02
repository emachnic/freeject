Given /^a User with username "([^"]*)"$/ do |username|
  @user = Factory(:user, username: username)
end

When /^I login successfully$/ do
  fill_in "Username", :with => "chunkybacon"
  fill_in "Password", :with => "P@ssword"
  click_button "Sign in"
end
