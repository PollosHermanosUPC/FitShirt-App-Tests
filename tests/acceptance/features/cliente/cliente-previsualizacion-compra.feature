Feature: Previsualización de productos a comprar

    Como cliente,
    Quiero ver una previsualización de los productos en mi carrito
    Para confirmar mi compra antes de proceder al pago.

    Scenario: Visualización de lista
        Given que el cliente ha agregado ítems al carrito
        And desea finalizar la compra
        When selecciona la opción "Comprar"
        Then el sistema debería redirigir al cliente a la página de pago
        And mostrar los ítems incluyendo nombre, imagen, cantidad, subtotal, total y método de pago.