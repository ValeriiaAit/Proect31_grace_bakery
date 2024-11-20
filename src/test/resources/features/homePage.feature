Feature: HomePage

  Scenario: Check that the Home page is opened
    Given User launches the browser
    When User opens the Home page grace_bakery
    Then Check that the title Home page is opened
    And User closes the browser