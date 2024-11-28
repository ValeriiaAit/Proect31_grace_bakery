Feature: Login

  @Login
  Scenario: Successful user login
    Given User launches the browser
    When User opens the Home page grace_bakery
    And The user clicks on Login Link
    And The user enters valid data
    And User clicks on a button Login
    Then The user checks the display of successful login message
    And User closes the browser

  @InvalidPassword
  Scenario Outline: Unsuccessful user login
    Given User launches the browser
    When User opens the Home page grace_bakery
    And The user clicks on Login Link
    And The user enters valid email and invalid password
    Examples:
      | email             | password |
      | test_qa@gmail.com | 11111    |
      | test_qa@gmail.com | 111      |
      | test_qa@gmail.com |          |
    And User clicks on a button Login
    Then The user checks the display of unsuccessful login message
    And User closes the browser
