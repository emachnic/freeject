Feature: User Logs In
  So that I can use Freeject
  As a user
  I should be able to login

  @administration
  Scenario: User logs in successfully
    Given a User with username "chunkybacon"
    And I am on the home page
    When I login successfully
    Then I am on the home page
