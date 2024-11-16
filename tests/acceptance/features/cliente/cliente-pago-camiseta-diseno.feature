Feature: Realizar pago de camiseta de diseño

    Como cliente,
    Quiero realizar el pago de una camiseta personalizada
    Para completar la compra de mi diseño.

    Scenario: Pago exitoso de camiseta personalizada
        Given que el cliente ha completado el diseño de su camiseta
        And desea realizar la compra
        When ingresa los datos de su tarjeta y confirma el pago
        Then el sistema debería procesar el pago
        And enviar una confirmación con el mensaje "Pago realizado con éxito", los detalles del diseño y un recibo de la compra.

    Scenario: Error en el pago de camiseta personalizada
        Given que el cliente intenta realizar el pago de una camiseta personalizada
        When ocurre un error en los datos de la tarjeta o en el proceso de pago
        Then el sistema debería mostrar un mensaje indicando el error específico (como tarjeta no válida o fondos insuficientes)
        And ofrecer la opción de reintentar o usar un método de pago alternativo.