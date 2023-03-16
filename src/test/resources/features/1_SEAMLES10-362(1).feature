@SEAMLES10-364
Feature: Default

	Background:
		#@SEAMLES10-362
		    Given User is on the login page
		

	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#
	#1-User can login with valid credentials (either clicking on the "{*}{color:#FF0000}Login button{color}{*}" or hitting the "Enter" key from the keyboard as the last step)
	@SEAMLES10-363
	Scenario: AC1-TC1- Verify that user can login with valid credentials by clicking login button
		When user can write valid username
		 And user can write valid password
		 And user can click login button
		 Then user can see dashboard	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#
	#1-User can login with valid credentials (either clicking on the "Login button" or hitting the "Enter" key from the keyboard as the last step)
	@SEAMLES10-365
	Scenario: AC1-TC2- Verify that user can ogin with valid credentials by pressing enter key
		When user can write valid username
		    And user can write valid password
		    And user can press enter key
		    Then user can see dashboard	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#2-User can not login with any invalid credentials
	#-"{*}{color:#FF0000}Wrong username or password{color}{*}." should be displayed for invalid credentials
	#-"Please fill out this field" message should be displayed if the password or username is empty
	#ser cannot login with invalid credentials
	@SEAMLES10-366
	Scenario Outline: AC2-TC1-Verify that user cannot login with invalid credentials
		When user can write invalid username "<username>"
		    And user can write invalid password "<password>"
		    And user can click login button
		    Then user cannot see dashboard and sees the notice wrong message
		    Examples:
		      | username    | password    |
		      | aaaa1111    | jirajiraş   |
		      | aaaa1111    | Employee123 |
		      | Employee170 | jirajiraş   |
		      | EMPLOYEE170 | Employee123 |	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#2-User can not login with any invalid credentials
	#-"Wrong username or password." should be displayed for invalid credentials
	#-"{*}{color:#FF0000}Please fill out this field{color}{*}" message should be displayed if the password or username is empty
	@SEAMLES10-367
	Scenario Outline: AC2-TC2 Verify that user cannot login with blank credentials
		When user can write invalid username "<username>"
		    And user can write invalid password "<password>"
		    And user can click login button
		    Then user cannot see dashboard and sees the notice blank message
		    Examples:
		      | username    | password    |
		      |             | Employee123 |
		      | Employee170 |             |
		      |             |             |	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#
	#3-User can see the password in a form of *{color:#FF0000}dots{color}* by default
	@SEAMLES10-368
	Scenario: AC3-TC1-Verify that user can see the password in a form of dots by default
		When user can write valid password
		    Then user can see the password in a form of dots	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#4-User can see the password *{color:#FF0000}explicitly{color}* if needed
	@SEAMLES10-369
	Scenario: AC4-TC1 Verify that user can see the password explicitly if needed
		When user can write valid password
		    And User can click to toggle button
		    Then User can see the password	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#5-User can see the "{*}{color:#FF0000}Forgot password{color}{*}?" link on the login page and can see the "Reset Password" button on the next page after clicking on forget password link
	@SEAMLES10-370
	Scenario: AC5-TC1-Verify that user can see the "Forgot password?" link
		Then user can see the Forgot password link	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#5-User can see the "Forgot password?" link on the login page and can see the "{*}{color:#FF0000}Reset Password{color}{*}" button on the next page after clicking on forget password link
	@SEAMLES10-371
	Scenario: AC5-TC2-Verify that user can see the "Reset Password" button on the next page after clicking on forget password link
		And User can click Forgot password link
		    Then user can see reset password link	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#6-User can see valid placeholders on *{color:#FF0000}Username{color}* and Password fields
	#sword fields
	@SEAMLES10-372
	Scenario: AC6-TC1- Verify that user can see valid username placeholder
		Then user can see username placeholder	

	#User Story :
	#
	#As a user, I should be able to login.
	#
	#Acceptance Criteria:
	#6-User can see valid placeholders on Username and *{color:#FF0000}Password{color}* fields
	#sword fields
	@SEAMLES10-373
	Scenario: AC6-TC2-Verify that user can see valid username placeholder
		Then user can see password placeholder