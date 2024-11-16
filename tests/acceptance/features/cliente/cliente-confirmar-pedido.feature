Feature: Confirmar pedido con el proveedor

    Como cliente,
    Quiero confirmar mi pedido con el proveedor
    Para proceder con la confección de mi diseño.

    Scenario: Confirmación de pedido exitosa
        Given que el cliente ha recibido un presupuesto
        When selecciona la opción "Confirmar Pedido"
        Then el sistema debería enviar la confirmación al proveedor
        And notificar al cliente con el tiempo estimado de entrega.

    Scenario: Cancelación del pedido
        Given que el cliente ha recibido un presupuesto
        When selecciona la opción "Cancelar"
        Then el sistema debería notificar al proveedor sobre la cancelación
        And mostrar una confirmación al cliente.