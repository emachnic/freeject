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

Given /^a project "([^"]*)"$/ do |project|
  @project = Factory(:project, name: project)
end

When /^I add a user story with title "([^"]*)"$/ do |title|
  click_link "Add Story"
  fill_in "Story Title", with: title
  select "Feature", from: "Story Type"
  fill_in "Description", with: "User story description"
  click_button "Create Story"
end

When /^the story name$/ do
  @story = Story.last
  @story.name
end

When /^the backlog$/ do
  #backlog
end

When /^I should (not )?see a "([^"]*)" message$/ do |negate, message_type|
  if negate
    page.should_not have_selector(".#{message_type}")
  else
    page.should have_selector(".#{message_type}")
  end
end
