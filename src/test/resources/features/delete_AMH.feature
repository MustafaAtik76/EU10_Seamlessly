@del
Feature: Deleted Files Tab Functionality

  Background: User logs-in with valid credentials, navigates to All_files page, creates and deletes ex files,
    Given user login with valid credentials
    And user navigates to All_files page
    And user creates and deletes "New Text Delete 1" and "New Text Delete 2" files

  @SEAMLES10-616 #smoke
  Scenario: User can see the most recent deleted file in the first line of
  the deleted file list when deleted files are ordered by newest to oldest

    When user switches to Deleted_Files tab
    And user sorts deleted files by newest to oldest
    Then verify that user can see the last deleted "New Text Delete 2" file in the first line of the deleted file list
  @SEAMLES10-617
  Scenario: User can order the all deleted files by newest to oldest or visa versa

    When user switches to Deleted_Files tab
    And user sorts deleted files by newest to oldest
    Then verify that user is able to order all the deleted files "New Text Delete 1" and "New Text Delete 2" by newest to oldest or visa versa
  @SEAMLES10-618
  Scenario: User can order alphabetically all the deleted files based on their names

    When user switches to Deleted_Files tab
    And user sorts deleted files based on their names
    Then  verify that user is able to view all the deleted files "New Text Delete 1" and "New Text Delete 2" based on the names sorted alphabetically
  @SEAMLES10-619
  Scenario: User can delete any deleted file permanently by using the three dots icon in the file’s line

    When user switches to Deleted_Files tab
    And User clicks to the three dots button next to the "New Text Delete 1" file
    Then Verify that user is able to delete "New Text Delete 1" file permanently
  @SEAMLES10-620
  Scenario: User can restore any deleted file and see it again under the All Files tab

    When user switches to Deleted_Files tab
    And User can restore the "New Text Delete 2" file
    Then Verify that user is able to restore the deleted "New Text Delete 2" file and see it again under the All files tab