Feature: User adds story to project
  So that I can decide what to work on
  As an authenticated user
  I should be able to add a story to a project
  
  @projects, @user_stories
  Scenario: Successfully add user story
    Given an authenticated user
    And a project "My First Project"
    And I am on the "My First Project" project page
    When I add a user story with title "User does something"
    Then I should see "Successfully added story to project."
    And I should see "User does something"