@MY @SEAMLES10-596
Feature: folder view feature
  User Story :

  As a user, I should be able to change folder view order by using Name/Size/Modified buttons

  Acceptance Criteria:

  User can change folder view order by Name
  User can change folder view order by Size
  User can change folder view order by Modified
  User can change the folder view by clicking the toggle-view button at the right corner of all files tab screen
  User can select all the files at once and see the total values of all files in the first line when clicked on the “select all” checkbox at the left top corner of the list

  Background: user is on the folder module
    Given user login with valid credentials
    When user navigates to "files" module



  #AC1-TC1  User can change folder view order by Name
  @SEAMLES10-642
  Scenario:Verify user can change folder view order by name

    When user click the Name button
    Then Verify user can see the folder in alphabetic older based on their names

#AC1-TC2 if name is on ascending order or descending order
  @SEAMLES10-643
  Scenario: verify ordering is ascending or descending
    When user click the Name button
    And verify after clicking the name if it is on ascending order or descending order

#AC2 User can change folder view order by Size
  @SEAMLES10-655
  Scenario: Verify user can change folder view order by size
    When user navigates to "files" module
    When user click the Size button
    Then Verify user can see the folder in order based on their sizes

    #AC3 User can change folder view order by Modified
  @SEAMLES10-660
  Scenario: Verify user can change folder view order by modified date
    When user navigates to "files" module
    And user click the Modified button
    Then Verify user can see the folder in order based on their uploaded dates


      #AC4 User can change the folder view by clicking the toggle-view button at the right corner of all files tab screen
  @SEAMLES10-661
  Scenario: Verify can change the folder view by clicking the toggle-view button
  at the right corner of all files tab screen

    When user navigates to "files" module
    And user click the taggle-view button at the right corner of all files tab screen
    Then Verify user can see the folder view in large icons


#AC5 -User can select all the files at once and
# see the total values of all files in the first line when clicked on the “select all” checkbox at the left top corner of the list

#TC1-verify all the checkboxes are selected
  @SEAMLES10-686
  Scenario: Verify When user select all checkbox see the all checkBox are selected

    When user click the select all checkbox
    Then Verify all checkboxes are selected
#AC5 - TC2
  @SEAMLES10-687
    Scenario: Verify when user click all checkbox and see the total value of all files
      When user click the select all checkbox
      Then Verify total values of all files in the first line



