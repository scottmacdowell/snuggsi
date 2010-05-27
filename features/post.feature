@posts
Feature: Content can be posted to snuggsi
  In order to give users the ability to access persisted content
  As an Administrator
  I want to make a sub-class of Thingi (or at least a Thingi) postable

  Background:
    Given the following user information:
      | username | email                          | password |
      | snuggs   | snuggs@snuggsi.com             | temp     |

  Scenario: Content gets posted to snuggsi
    Given I am logged in to my Snuggsi Account
    When I create content that inherits from thingi
    And I can post the content
    Then the content is now accessible to the public
    And shows up at the top of list for all Posts

  Scenario Outline: multiple user content gets posted to snuggsi
    Given I am logged in to my Snuggsi Account as <username> and <password>:
    And my email address is returned as <email>

  Examples:
    | username | email                          | password |
    | snuggs   | snuggs@snuggsi.com             | temp     |
