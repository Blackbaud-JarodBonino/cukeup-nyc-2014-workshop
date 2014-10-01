@wip
Feature: New feature

  Write a description of your feature here.

  Scenario: Breakfast is under the reimbursement limit
    Given the maximum reimbursement for breakfast is $5.00
    When I spend $4.99 for breakfast  
    Then I should receive $4.99 in reimbursement
    
  Scenario: Breakfast reimbursement limit is exceeded
    Given the maximum reimbursement for breakfast is $5.00
    When I spend $5.01 for breakfast
    Then I should receive $5.00 in reimbursement
    
  Scenario: Lunch is under the reimbursement limit
    Given the maximum reimbursement for lunch is $15.00
    When I spend $14.99 for lunch  
    Then I should receive $14.99 in reimbursement
    
  Scenario: Lunch reimbursement limit is exceeded
    Given the maximum reimbursement for lunch is $15.00
    When I spend $15.01 for lunch
    Then I should receive $15.00 in reimbursement
    
  Scenario: Dinner is under the reimbursement limit
    Given the maximum reimbursement for dinner is $25.00
    When I spend $24.99 for dinner  
    Then I should receive $24.99 in reimbursement
    
  Scenario: Dinner reimbursement limit is exceeded
    Given the maximum reimbursement for dinner is $25.00
    When I spend $25.01 for dinner
    Then I should receive $25.00 in reimbursement
    
  Scenario: Lunch is under the reimbursement limit
    Given the maximum reimbursement for lunch is $15.00
    When I spend $14.99 for lunch  
    Then I should receive $14.99 in reimbursement
    
  Scenario: Sales tax on alcohol is not reimbursed
    Given Sales tax is 6%
    When I spend $10.00 for alcohol
    Then I should receive $9.40 in reimbursement  