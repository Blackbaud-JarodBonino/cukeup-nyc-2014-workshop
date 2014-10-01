@wip
Feature: Schedulable photos from remote controlled telescope

  Ability to schedule photos from the telescope

  Scenario: Picture scheduled and taken
    Given a user wants to take a photo of the North Star at 8:00 pm, October 1, 2014
    And the picture is taken at sky location
    When there is no time conflict with other scheduled picture requests
    And the sky is clear
    Then the picture is taken and the user gets it

  Scenario: Time conflict
    Given a user wants to take a photo of the North Star at 8:00 pm, October 1, 2014
    And the picture is taken at sky location
    When there is a time conflict with other scheduled picture requests
    And the sky is not clear
    Then the picture is not taken and the user needs to reschedule