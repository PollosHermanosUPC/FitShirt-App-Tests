Feature: Implementación de método de autenticación Captcha

    Como desarrollador,
    Quiero implementar un método de autenticación Captcha al iniciar sesión
    Para prevenir ataques automatizados.

    Scenario: Validación correcta del Captcha
        Given que el usuario está en el proceso de inicio de sesión
        When completa correctamente el Captcha
        Then el sistema debería permitir procesar la solicitud de inicio de sesión.

    Scenario: Validación incorrecta del Captcha
        Given que el usuario está en el proceso de inicio de sesión
        When completa incorrectamente el Captcha
        Then el sistema debería mostrar un mensaje de error indicando "Captcha incorrecto"
        And solicitar al usuario que intente nuevamente.