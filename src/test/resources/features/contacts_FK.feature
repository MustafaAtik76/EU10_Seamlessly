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


  @SEAMLES10-595
  Scenario: User creates a new contact
    Given user is on the "Contacts" page
    When user clicks on "New Contact" button
    Then user should see a form to enter contact information
    When user fills in the required fields
    Then a new contact should be created and added to the list of contacts