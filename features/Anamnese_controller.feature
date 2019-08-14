Feature: Realize anamnese

   As an appraiser 
   I want to realize an anamnese

    Scenario: Realize Anamnese
        Given I am logged in as a appraiser
        And I am on a athlete's profile
        When I click to do a anamnese
        Then I should go to realize anamnese's page