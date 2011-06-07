Feature: User creates a Project
  So that I can interact with a project
  As an Authenticated user
  I should be able to create a project
  
  @projects
  Scenario: Successfully create a project
    Given an authenticated user
    And I am on the dashboard page
    When I go through the project creation process
    Then I should see "Project was successfully created."