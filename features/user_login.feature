Feature: User login
  
  Scenario: Login page
    When I visit the homepage
    Then I should see the login form

  Scenario: User prompted to log in
    Given I am not logged in
    When I visit the homepage
    Then I should be prompted to log in with Google