Feature: Contacto entre el usuario y el proveedor

    Como cliente,
    Quiero contactar a un proveedor para confeccionar mi diseño
    Para realizar mi camiseta personalizada.

    Scenario: Contacto exitoso
        Given que el cliente ha completado su diseño
        When selecciona la opción "Contactar Proveedor"
        Then el sistema debería enviar los detalles al proveedor
        And mostrar una confirmación al cliente.

    Scenario: Error en el contacto
        Given que el cliente intenta contactar a un proveedor
        When ocurre un fallo en la conexión o error en los datos
        Then el sistema debería mostrar un mensaje indicando "Solicitud no enviada"
        And ofrecer la opción de reintentar.