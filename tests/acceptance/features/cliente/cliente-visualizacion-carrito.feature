Feature: Visualización del carrito de compras

    Como cliente,
    Quiero visualizar mi carrito de compras
    Para revisar las camisetas que deseo comprar.

    Scenario: Visualizar el carrito de compras
        Given que el cliente ha agregado ítems al carrito
        And desea verlos
        When selecciona el ícono del carrito de compras
        Then debería mostrarse una lista con las camisetas que desea comprar
        And cada camiseta incluye imagen, nombre, precio, cantidad, subtotal y el total de la compra.

    Scenario: Visualizar el carrito de compras vacío
        Given que el cliente no ha agregado ítems al carrito
        When selecciona el ícono del carrito de compras
        Then debería mostrarse un mensaje indicando "Carrito vacío".

    Scenario: Carrito de compras persistente
        Given que el cliente ha añadido ítems al carrito
        And comienza a navegar por otras páginas
        When selecciona el ícono del carrito de compras
        Then el sistema debería mostrar los ítems previamente agregados.