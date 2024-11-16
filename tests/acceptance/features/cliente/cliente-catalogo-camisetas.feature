Feature: Catálogo de camisetas

    Como cliente,
    Quiero visualizar las camisetas disponibles en el catálogo
    Para poder elegir y realizar una compra informada.

    Scenario: Visualizar el catálogo de camisetas
        Given que el cliente está en la página de Catálogo
        When no aplica ningún filtro
        Then debería mostrarse una lista con las camisetas disponibles incluyendo imagen, nombre, precio, valoración y empresa.