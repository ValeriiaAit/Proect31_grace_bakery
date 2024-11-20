Feature: Login

  @Login
  Scenario: Успешный логин пользователя
    Given Пользователь запускает браузер
    When Пользователь открывает домашнюю страницу grace_bakery
    And Пользователь нажимает на Login Link
    And Пользователь вводит валидные данные
    And Пользователь нажимает на кнопку Login
    Then Пользователь проверяет отображение сообщения об успешном логине
    And Пользователь закрывает браузер

  @InvalidPassword
  Scenario Outline: НЕуспешный логин пользователя
    Given Пользователь запускает браузер
    When Пользователь открывает домашнюю страницу grace_bakery
    And Пользователь нажимает на Login Link
    And Пользователь вводит валидный email и невалидный password
      | email   | password   |
      | <email> | <password> |
    And Пользователь нажимает на кнопку Login
    Then Пользователь проверяет отображение сообщения о неуспешном логине
    And Пользователь закрывает браузер
    Examples:
      | email             | password   |
      | test_qa@gmail.com | 11111 |
      | test_qa@gmail.com | 111 |
      | test_qa@gmail.com ||