Feature: Pago de los productos

    Como cliente,
    Quiero realizar el pago de mi compra
    Para completar el proceso y adquirir los productos seleccionados.

    Scenario: Mostrar un formulario para ingresar los datos de la tarjeta
        Given que el cliente está en el apartado de Pagar
        And ha confirmado los ítems a comprar
        When selecciona la opción "Pagar"
        Then el sistema debería mostrar un formulario para ingresar los datos de la tarjeta incluyendo número de tarjeta, nombre del titular, fecha de vencimiento y CVV.

    Scenario: Validación exitosa de los datos de la tarjeta
        Given que el cliente ha ingresado correctamente los datos de la tarjeta
        When selecciona la opción "Pagar"
        Then el sistema debería validar los datos
        And mostrar el mensaje "Pago efectuado exitosamente".

    Scenario: Validación no exitosa de los datos de la tarjeta
        Given que el cliente ha ingresado incorrectamente los datos de la tarjeta
        When selecciona la opción "Pagar"
        Then el sistema debería mostrar un mensaje indicando "Pago no efectuado".