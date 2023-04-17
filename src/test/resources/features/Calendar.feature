@123
Feature: Calendar Module
  User Story :

  As a user, I should be able to see Daily-Weekly-Monthly calendar view and create a new event under the Calendar module

  Acceptance Criteria:

  User can display daily calendar view
  User can display weekly calendar view
  User can display monthly calendar view
  User can create a new event under the Calendar module and see it on the related day through the Monthly Calendar view
  User can delete any event through the Monthly Calendar view by clicking on the event and then using “more” option

  Background:
    Given user login with valid credentials
    And   user navigates to "Calendar" module

  @SEAMLES10-608
  Scenario:  User can display daily calendar view
    When User click on the calendar view dropdown menu
    And  User click on "day" option
    Then User should see daily calendar view

@SEAMLES10-609
  Scenario:  User can display weekly calendar view
    When  User click on the calendar view dropdown menu
    And  User click on "week" option
    Then User should see weekly calendar view

@SEAMLES10-610
  Scenario:  User can display monthly calendar view
    When  User click on the calendar view dropdown menu
    And  User click on "month" option
    Then User should see monthly calendar view

  @SEAMLES10-613 #smoke
  Scenario: User  can create a new event  and see it on the calendar
    When  User  select Monthly view calendar
    And  User  click on New event button
    And  User  input "Alumni Meeting" as a new event in placeholder
    And  User  select beginning time and date
    And  User  select ending time and date
    And  User  click on Save  button
    Then User  should see new event on monthly calendar

  @SEAMLES10-623
  Scenario: User can delete any event through the Monthly Calendar
    When User click "any event" on the monthly calendar
    And  User click More button
    And  User click tree dot dropdown menu
    And  User click delete button
    Then User should see the event was erased