@SEAMLES10-605
Feature: Search functionality

  User Story :

  As a user, I should be able to search file or contact from the Dashboard and see the photos under Photos Module

  Acceptance Criteria:

  User can search file typing its name through the magnifying glass icon and see the details side page of the file when clicked on it.
  User can search contacts by clicking on the contacts icon and typing its name
  User can also see the images files under the Photos module when uploaded them
  User can navigate to the Dashboard page whenever clicking the Seamlessly icon at the top left corner of the page


  Background: login

    Given user login with valid credentials
    When user navigates to "files" module


  @SEAMLES10-638
  Scenario: User can search file typing its name through the magnifying glass icon and see the details side page of the file when clicked on it.
    When user clicks the search button
    And user types a file name
    And user presses the enter key
    Then user can see details of the file on side page


  @SEAMLES10-665
    Scenario: User can search contacts by clicking on the contacts icon and typing its name
      When user clicks the search button
      And user types the contacts name
      And user clicks the contacts name on the dropdown menu
      Then user can see the related contact

  @SEAMLES10-698
  Scenario: User can see the images files under the Photos module when uploaded them
    When user clicks the + button
    And user clicks the uploadFile link to upload "Nihat" with ".jpg"
    And user clicks the photos icon
    Then  user can see the "Nihat" file

  @SEAMLES10-699
    Scenario: User can navigate to the Dashboard page whenever clicking the Seamlessly icon at the top left corner of the page
      When User clicks seamlesslyIcon
      Then user navigates to dashboard page


