Feature: Edición de publicaciones

    Como representante de una empresa,
    Quiero editar mis publicaciones de camisetas
    Para mantenerlas actualizadas con mi inventario.

    Scenario: Editar una camiseta publicada exitosamente
        Given que la empresa está en la página "Mis Camisetas"
        And tiene publicaciones activas
        When selecciona la opción "Editar"
        And realiza cambios válidos en la información de la camiseta
        Then debería ver un mensaje indicando "Edición satisfactoria".

    Scenario: Editar una camiseta publicada erróneamente
        Given que la empresa está en la página "Mis Camisetas"
        And tiene publicaciones activas
        When selecciona la opción "Editar"
        And realiza cambios inválidos en la información de la camiseta
        Then debería ver un mensaje indicando "Error al momento de editar".

    Scenario: Eliminar una camiseta publicada
        Given que la empresa está en la página "Mis Camisetas"
        And tiene publicaciones activas
        When selecciona la opción "Eliminar"
        And confirma la acción
        Then debería ver un mensaje indicando "Eliminación exitosa".