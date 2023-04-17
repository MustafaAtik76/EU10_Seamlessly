 @smoke
Feature: Seamlessly Smoke Test

  Background: user is on the Files module
    Given user login with valid credentials

       #CALENDAR MODULE MUSATIK
  @smoke @SEAMLES10-613 #smoke
  Scenario: User  can create a new event  and see it on the calendar
    When user navigates to "Calendar" module
    And  User  select Monthly view calendar
    And  User  click on New event button
    And  User  input "Alumni Meeting" as a new event in placeholder
    And  User  select beginning time and date
    And  User  select ending time and date
    And  User  click on Save  button
    Then User  should see new event on monthly calendar

      #CONTACTS MODULE FK

      #DECK MODULE IY

     #DELETE MODULE AMH
  @smoke @SEAMLES10-616  #smoke
  Scenario: User can see the most recent deleted file in the first line of the deleted file list when deleted files are ordered by newest to oldest
    When user navigates to All_files page
    And user creates and deletes "New Text Delete 1" and "New Text Delete 2" files
    And user switches to Deleted_Files tab
    And user sorts deleted files by newest to oldest
    Then verify that user can see the last deleted "New Text Delete 2" file in the first line of the deleted file list

      #FILES MODULE MAK
  @smoke @SEAMLES10-656 #smoke
  Scenario: verify user add any file to favorites from its own three dots menu
    When user navigates to "files" module
    And user clicks on "Folder1" file three dots button
    And user clicks on add to favorites button
    And user clicks on favorites tab button
    Then user see starred "Folder1" file

    #FOLDER MODULE MY
    #NOTES MODULE VO
    #PROFILE MODULE AY
    #SEARCH MODULE ST

       #TASKS MODULE MAKKAYA
  @smoke @SEAMLES10-679 #smoke
  Scenario: User can create a new task
    When user navigates to "tasks" module
    And user clicks Add List…
    And user writes the list name "Test for Task" and presses ENTER key
    And user writes the task name "new task" and presses ENTER key
    Then verify that user sees "new task" in the task list

    #UPLOAD MODULE MM
  @smoke @SEAMLES10-650 #smoke
  Scenario: User can see the total number of files and folders under the files list table
    When user navigates to "files" module
    And user upload "selenium notlarim" with ".txt"
    And  user create a "muezzinoglu" folder
    Then user should see the all number of under the files list table
    And delete "selenium notlarim" with extension ".txt"
    And delete "muezzinoglu" with extension ""







