Feature: Realizar cambios de personalización de camiseta

    Como cliente,
    Quiero realizar cambios en mis diseños personalizados
    Para ajustarlos a mis preferencias.

    Scenario: Apartado de diseño
        Given que el cliente quiere modificar un diseño creado
        When selecciona el botón "Re Diseñar"
        Then el sistema debería redirigirlo al formulario de diseño
        And mostrar los valores previamente ingresados en los campos.

    Scenario: Vista Previa
        Given que el cliente está en la sección de Re-Diseño
        When completa los campos de diseño
        And selecciona la opción "Guardar"
        Then el sistema debería mostrar una vista previa del diseño actualizado.

    Scenario: Guardar Cambios
        Given que el cliente está en la vista previa del diseño
        When selecciona el botón "Guardar Cambios"
        Then el sistema debería guardar el diseño actualizado
        And permitir visualizarlo en la lista de diseños del cliente.