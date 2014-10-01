@wip
Feature: Schudulable photos from remote controlled telescope

  Write a description of your feature here.

  Scenario: Picture scheduled and taken
    Given a user wants to take a photo of the North Star at 8:00 pm, October 1, 2014
    And the picture is taken at sky location
    When there is no time conflict with other
    And the sky is clear
    Then the picture is taken and the user gets it
