Feature: Snuggsi account authentication
  As a snuggsi owner
  I want to have login functionality
  So that I can access my account

  Scenario: Loging in to my Snuggsi
    Given I am not logged in
    When I reveal my username
    And I reveal my password
    And I click 'Login your Snuggsi'
    Then my snuggsi should say 'Welcome Snuggs'
    And there should be a link to 'Logout of your Snuggsi'
