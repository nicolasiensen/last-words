Feature: schedule a public message
  In order to keep in touch with everybody after my death
  As an alive
  I want to schedule a public message

  Scenario: when I am not logged in
    Given I am in "the homepage"
    And I fill in "Message" with "Hey everybody! This is a message from the future :D I hope you are all good! Because I am :)"
    And I fill in "Schedule for" with "1"
    When I press "Schedule my first message!"
    Then I should be on "this message page"
    And I should see "Hey everybody! This is a message from the future :D I hope you are all good! Because I am :)"
    And I should see "will be spread 1 day after you die"
