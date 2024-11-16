Feature: Adición al carrito de compras

    Como cliente,
    Quiero agregar camisetas a mi carrito de compras
    Para tener un listado de lo que deseo comprar.

    Scenario: Agregar una camiseta al carrito
        Given que el cliente ha encontrado una camiseta que desea comprar
        When selecciona la opción "Agregar al carrito"
        Then el sistema debería actualizar la lista del carrito con el nuevo ítem.

    Scenario: Agregar un monto de una camiseta al carrito
        Given que el cliente está en la sección de Detalles de la camiseta
        And desea modificar la cantidad de camisetas a comprar
        When selecciona la opción "Agregar al carrito"
        Then el sistema debería actualizar la lista del carrito con el ítem y la cantidad seleccionada.