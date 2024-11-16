Feature: Seguir comprando

    Como cliente,
    Quiero tener la opción de volver al catálogo de compras
    Para seguir comprando sin perder los ítems en mi carrito.

    Scenario: Volver al catálogo
        Given que el cliente está en el apartado de Pago
        And desea continuar comprando
        When selecciona la opción "Cancelar"
        Then el sistema debería redirigirlo al catálogo
        And mantener intacto el contenido de su carrito de compras.