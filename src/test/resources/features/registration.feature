Feature: Registration

  @Registration
  Scenario: Успешная регистрация пользователя
    Given Пользователь открывает браузер
    When Пользователь открывает дом. страницу grace_bakery
    And Пользователь кликает на Login
    And Пользователь нажимает на кнопку Register
    And Пользователь заполняет форму регистрации
      | name   | surname   | email   | password   | confirmPassword   | phone   |
      | <name> | <surname> | <email> | <password> | <confirmPassword> | <phone> |
    And Пользователь нажимает на кнопку Register
    Then Проверить отображение сообщения об успешной регистрации
    And Пользователь закрывает Браузер
    Examples:
      | name   | surname   | email             | password   | confirmPassword | phone        |
      | Name03 | Surname03 | email03@gmail.com | Password03 | Password03      | +12345678901 |

  @WrongRegistrationsValue
  Scenario Outline: Неуспешная регистрация пользователя с невалидными данными
    Given Пользователь открывает браузер
    When Пользователь открывает дом. страницу grace_bakery
    And Пользователь кликает на Login Link
    And Пользователь нажимает на кнопку Register
    And Пользователь заполняет форму регистрации
      | name   | surname   | email   | password   | confirmPassword   | phone   |
      | <name> | <surname> | <email> | <password> | <confirmPassword> | <phone> |
    And Пользователь нажимает на кнопку Register
    Then Проверить отображение сообщения об неуспешной регистрации
    And Пользователь закрывает Браузер
    Examples:
      | name   | surname   | email             | password   | confirmPassword | phone        |
      | Name07 | Surname07 | email07@gmail.com | Password07 | Password07      | +12345678901 |
      | Name02 | Surname02 | email02@gmail.c   | Password02 | Password02      | +12345678902 |