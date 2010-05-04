Feature: Content can be posted to snuggsi
  In order to give users the ability to access content
  As an Administrator
  I want to make a sub-class of Thingi (or at least a Thingi) postable
  So that Every thingi has the ability to be posted
  
  Scenario: content gets posted to snuggsi
    Given I am on default snuggsi page
    When I create content that inherits from thingi
    Then I can post the content
    And content is now accessible to the public
