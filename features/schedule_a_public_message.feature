Feature: schedule a public message
  In order to keep in touch with everybody after my death
  As an alive
  I want to schedule a public message

  @omniauth_test
  Scenario: when I am not logged in
    Given I am in "the homepage"
    And I fill in "So... what's your message?" with "Hey everybody! This is a message from the future :D I hope you are all good! Because I am :)"
    And I fill in "Schedule for" with "1"
    And I press "Schedule my first message!"
    Then I should see "I need your Facebook account to deliver your messages"
    When I click "Ok, connect my Facebook account"
    Then I should be on "this message page"
    And I should see "Hey everybody! This is a message from the future :D I hope you are all good! Because I am :)"
    And I should see "will be spread 1 day after you die"
    And I should see "In memory of Joe Bloggs"

  @omniauth_test
  Scenario: when I leave fields blank
    Given I am logged in
    And I am in "the homepage"
    When I press "Schedule my first message!"
    Then I should see "Don't you wanna say something after your death? Come on... don't be shy"
    Then I should see "When should I deliver it?"
