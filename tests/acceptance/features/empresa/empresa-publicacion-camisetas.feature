Feature: Publicación de camisetas

    Como representante de una empresa,
    Quiero publicar camisetas en la plataforma
    Para que puedan ser adquiridas por los clientes.

    Scenario: Publicar una nueva camiseta exitosamente
        Given que la empresa está en la página "Mis Camisetas"
        When selecciona la opción "Publicar Camiseta"
        And ingresa información válida como nombre, descripción, talla, precio, etc.
        And hace clic en "Aceptar"
        Then debería ver un mensaje indicando "Camiseta publicada exitosamente".

    Scenario: Publicar una nueva camiseta erróneamente
        Given que la empresa está en la página "Mis Camisetas"
        When selecciona la opción "Publicar Camiseta"
        And ingresa información incompleta o incorrecta
        And hace clic en "Aceptar"
        Then debería ver un mensaje de error indicando los campos que necesitan corrección.

    Scenario: Publicar una camiseta excediendo el límite permitido
        Given que la empresa ha alcanzado el límite de 20 camisetas publicadas
        When selecciona la opción "Publicar Camiseta"
        And intenta agregar una camiseta adicional
        Then debería ver un mensaje indicando "Límite de publicaciones alcanzado".