@wip
Feature: Schedulable photos from remote controlled telescope

  Ability to schedule photos from the telescope
  
  -sky location must be visible at time of scheduled photo
  -requested schedule slot must be available
  -requested schedule time must be in the future  

  Scenario: Picture scheduled and taken
    Given a user wants to take a photo of the North Star at 8:00 pm, for 10 minutes on October 1, 2014
    And the picture is aimed at "sky location"
    And there is no time conflict with other scheduled picture requests
    And the sky is clear
    When the time is 8:00 pm, October 1, 2014
    Then the picture is taken and the user gets it

  Scenario: Time conflict
    Given a user wants to take a photo of the North Star at 8:00 pm, for 10 minutes on October 1, 2014
    And the picture is aimed at "sky location"
    And there is a time conflict with other scheduled picture requests
    And the sky is not clear
    When the time is 8:00 pm, October 1, 2014
    Then the picture is not taken and the user needs to reschedule
    
  Scenario: Picture scheduled and taken
    Given wants to schedule a photo of the North Star at 8:00 pm, October 1, 2014
    When the time is 8:00 pm, October 1, 2014
    Then the picture is taken and presented to NASA

  Scenario: Time conflict
    Given NASA wants to schedule a photo of the North Star at 8:00 pm, October 1, 2014
    And Jarod has already scheduled a photo at 8:00 pm, October 1, 2014
    When the time is 8:00 pm, October 1, 2014
    Then NASA's picture is not taken 
    And they are presented with the following message: "Another user has already scheduled a photo for tha time."
    
  Scenario: Sky location is not visible
    Given NASA wants to schedule a photo of the North Star at 8:00 pm, October 1, 2014
    And the North Star is not visible at that time
    When the time is 8:00 pm, October 1, 2014
    Then NASA's picture is not taken and they are notified that they need to reschedule
    
  Scenario: Scheduled time is in the past
    Given it is currently 8:01 pm, October 1, 2014
    When NASA attempts to schedule a photo of the North Star at 8:00 pm, October 1, 2014
    Then NASA's picture is not scheduled and they are notified that they need to reschedule for a time in the futuree
  