Feature: Visualizar descripción de una camiseta

    Como cliente,
    Quiero visualizar la descripción completa de una camiseta
    Para elegir la que mejor se adapte a mis necesidades.

    Scenario: Visualizar la descripción completa de una camiseta
        Given que el cliente está en la página de Catálogo
        When selecciona una camiseta específica
        Then debería mostrarse una página con los detalles como nombre, descripción, precio, tallas, valoración, imágenes y empresa.

    Scenario: Visualizar las imágenes de la camiseta
        Given que el cliente está en la página de Detalles de la camiseta
        When la galería de imágenes está disponible
        Then debería mostrarse una vista de galería con las imágenes de la camiseta seleccionada.

    Scenario: Visualizar la información del vendedor
        Given que el cliente está en la página de Detalles de la camiseta
        When selecciona la sección "Empresa"
        Then debería mostrarse la información del vendedor incluyendo nombre, logo, y listado de camisetas publicadas.