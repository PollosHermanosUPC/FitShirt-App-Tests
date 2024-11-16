Feature: Guardar el diseño

    Como cliente,
    Quiero guardar el diseño de mi camiseta
    Para usarlo en el futuro o enviarlo a confección.

    Scenario: Guardar exitosamente el diseño
        Given que el cliente ha completado todos los campos del formulario de diseño
        And tiene conexión a internet
        When selecciona la opción "Guardar"
        Then el sistema debería guardar el diseño en su cuenta
        And mostrar una lista de confeccionistas disponibles.

    Scenario: Guardado no exitoso del diseño por campos incompletos
        Given que uno o más campos del formulario de diseño están vacíos
        When selecciona la opción "Guardar"
        Then el sistema debería mostrar un mensaje indicando "Se debe llenar todos los campos"
        And no guardar el diseño.

    Scenario: Guardado no exitoso del diseño por problemas de internet
        Given que el cliente ha completado todos los campos del formulario de diseño
        And no tiene conexión a internet
        When selecciona la opción "Guardar"
        Then el sistema debería mostrar un mensaje indicando "Problemas de conexión"
        And no guardar el diseño.