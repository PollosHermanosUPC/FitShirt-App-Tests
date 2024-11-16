Feature: Finalizar la lista

    Como cliente,
    Quiero tener la opción de finalizar mi compra
    Para proceder al pago de los productos en mi carrito.

    Scenario: Finalizar la compra
        Given que el cliente ha agregado ítems al carrito
        And desea terminar su compra
        When selecciona la opción "Comprar"
        Then el sistema debería redirigir al cliente a la página de pago.

    Scenario: Finalizar la compra de usuario no logueado
        Given que el cliente no ha iniciado sesión
        And desea finalizar su compra
        When selecciona la opción "Comprar"
        Then el sistema debería redirigir al cliente a la página de inicio de sesión.

    Scenario: Finalizar la compra con carrito vacío
        Given que el cliente no ha agregado ítems al carrito
        When selecciona la opción "Comprar"
        Then la página no debería actualizarse.