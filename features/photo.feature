Feature: Photo can be added to snuggsi
  In order to give users the ability to use photos
  As an Administrator to a Snuggsi account
  I want to make a photo to Snuggsi
  So that 
  
  Scenario: Submit photo to Flickr
    Given I am on default snuggsi page
    When I upload a photo to Snuggsi
    Then the photo gets persisted to the user's Flickr account
    And a media link to the photo gets persisted to the user's snuggsi account
