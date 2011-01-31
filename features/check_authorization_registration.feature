Feature: Проверка регистрации и авторизации пользователя

    Scenario: Регистрация нового пользователя с паролем длиной меньше 6 знаков
        Given I am on the new user registration page
        When I fill in the following:
            | user_email                 | eugene@mail.ru |
            | user_password              | 12345          |
            | user_password_confirmation | 12345          |
        When I press "Sign up"
        Then I should see "Password is too short (minimum is 6 characters)"

