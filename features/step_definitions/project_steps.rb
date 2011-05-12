Given /^an authenticated user$/ do
  @user = Factory(:user)
  visit new_user_session_path
  fill_in "Username", with: "chunkybacon"
  fill_in "Password", with: "P@ssword"
  click_button "Sign in"
end

When /^I go through the project creation process$/ do
  click_link "Projects"
  click_link "New Project"
  fill_in "Name", with: "My First Project"
  click_button "Create Project"
end