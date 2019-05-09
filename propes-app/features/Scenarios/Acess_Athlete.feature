Feature: Test the application's list os athletes
  
To choose a athlete to evaluate 
As a evaluator
I want the system to show me the full list of athletes already registred.

Scenario: Choose athlete
    Given I'm loged in my account
    When I press the buttom "Todos os atletas"
    Then I must see a list of all athletes registred 

Scenario: See athletes already avaluated
    Given I'm 