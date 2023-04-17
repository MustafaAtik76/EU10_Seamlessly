@SEAMLES10-690
Feature: Contacts Module
  User Story :

  As a user, I should be able to create a new contact and edit/delete any contact under Contacts module

  Acceptance Criteria:

  User can create a new contact
  User can see all the contacts as a list inside the middle column and total number of the contacts near the “All Contacts” tab
  User can change the profile picture of any contact with a previously uploaded picture by using “Choose from files” option
  User can delete any selected contact

  Background:
    Given user login with valid credentials
    When user navigates to "Contacts" module

  @SEAMLES10-672 #smoke
  Scenario: User creates a new contact
    When user clicks on "New Contact" button
    And user should see a form to enter contact information
    And user fills in the required fields
    Then a new contact should be created and added to the list of contacts
   @SEAMLES10-688
    Scenario: User change the profile picture
      When user clicks on picture icon button
      And user should see Choose from files option
      And user select a picture
      And user clicks on Choose button
      Then a new profile picture should be changed
   @SEAMLES10-689
     Scenario: User delete any selected contact
       When user selects a contact
       And user clicks on the three dots button
       Then user clicks on the delete button

