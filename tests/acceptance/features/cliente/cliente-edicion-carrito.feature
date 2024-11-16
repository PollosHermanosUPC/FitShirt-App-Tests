Feature: Edición de cantidad en el carrito

    Como cliente,
    Quiero modificar la cantidad de camisetas en mi carrito
    Para ajustar el número de ítems fácilmente.

    Scenario: Modificar la cantidad de una camiseta en el carrito
        Given que el cliente está en el apartado del carrito de compras
        And desea modificar la cantidad de una camiseta no personalizada
        When modifica la cantidad en el campo correspondiente
        Then el sistema debería actualizar el subtotal y el total del carrito.

    Scenario: Modificar la cantidad de una camiseta en el carrito por una inválida
        Given que el cliente está en el apartado del carrito de compras
        And desea modificar la cantidad de una camiseta
        When ingresa un número mayor al stock disponible
        Then el sistema debería mostrar un mensaje de error
        And restaurar el valor anterior en el campo de cantidad.

    Scenario: Eliminar una camiseta del carrito
        Given que el cliente está en el apartado del carrito de compras
        And desea eliminar una camiseta
        When selecciona la opción "Eliminar"
        Then el sistema debería actualizar la lista del carrito
        And ajustar el total de la compra.