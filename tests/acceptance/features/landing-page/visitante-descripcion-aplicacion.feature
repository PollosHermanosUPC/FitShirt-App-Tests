Feature: Visualizar la descripción de la aplicación

    Como visitante,
    Quiero ver una descripción clara y concisa de la aplicación
    Para informarme adecuadamente sobre sus funcionalidades.

    Scenario: Visualizar las funcionalidades de la aplicación
        Given que el visitante está en la Landing Page
        When navega por la página
        Then debería visualizar las funcionalidades principales, lo más novedoso y la opción de diseño de camisetas.

    Scenario: Leer la descripción de la StartUp
        Given que el visitante está en la Landing Page
        When accede a la sección "Nosotros"
        Then debería visualizar una descripción clara de la StartUp.