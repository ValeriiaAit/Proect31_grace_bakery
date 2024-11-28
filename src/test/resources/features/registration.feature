Feature: Registration

  @Registration
  Scenario: Успешная регистрация пользователя
    Given User launches the browser
    When User opens the Home page grace_bakery
    And The user clicks on Login Link
    And The user clicks on the Register Link
    And Пользователь заполняет форму регистрации
      | name   | surname   | email   | password   | confirmPassword   | phone   |
      | <name> | <surname> | <email> | <password> | <confirmPassword> | <phone> |
    And Пользователь нажимает на кнопку Register
    Then Проверить отображение сообщения об успешной регистрации
    And User closes the browser
    Examples:
      | name   | surname   | email             | password   | confirmPassword | phone        |
      | Name03 | Surname03 | email03@gmail.com | Password03 | Password03      | +12345678901 |

  @WrongRegistrationsValue
  Scenario Outline: Неуспешная регистрация пользователя с невалидными данными
    Given User launches the browser
    When User opens the Home page grace_bakery
    And The user clicks on Login Link
    And The user clicks on the Register Link
    And Пользователь заполняет форму регистрации
      | name   | surname   | email   | password   | confirmPassword   | phone   |
      | <name> | <surname> | <email> | <password> | <confirmPassword> | <phone> |
    And Пользователь нажимает на кнопку Register
    Then Проверить отображение сообщения об неуспешной регистрации
    And User closes the browser
    Examples:
      | name   | surname   | email             | password   | confirmPassword | phone        |
      | Name07 | Surname07 | email07@gmail.com | Password07 | Password07      | +12345678901 |
      | Name02 | Surname02 | email02@gmail.c   | Password02 | Password02      | +12345678902 |