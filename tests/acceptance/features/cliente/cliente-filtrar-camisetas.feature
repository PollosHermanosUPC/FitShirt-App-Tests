Feature: Filtrar camisetas

    Como cliente,
    Quiero aplicar filtros en el catálogo
    Para encontrar camisetas que se ajusten a mis preferencias.

    Scenario: Filtrar camisetas por categoría
        Given que el cliente está en la página de Catálogo
        When selecciona una categoría en el filtro
        Then la lista de camisetas se actualiza
        And muestra solo las camisetas de la categoría seleccionada.

    Scenario: Filtrar por color
        Given que el cliente está en la página de Catálogo
        When selecciona un color en el filtro
        Then la lista de camisetas se actualiza
        And muestra solo las camisetas del color seleccionado.