Feature: Diseño y personalización de camisetas con IA

    Como cliente,
    Quiero diseñar una camiseta personalizada mediante un formulario
    Para verificar si el diseño cumple con mis expectativas.

    Scenario: Visualización del Formulario de Diseño
        Given que el cliente está en la sección de diseño de camisetas
        When accede al formulario de diseño
        Then el sistema debería mostrar los campos: Nombre del diseño, Color primario, Color secundario, Patrón de diseño, Material, Escudo, Número, Categoría y Nombre del jugador.

    Scenario: Ingreso de datos de personalización
        Given que el cliente ha completado el formulario de diseño con información válida
        When presiona el botón "Generar"
        Then el sistema debería mostrar una vista previa del diseño basado en los datos ingresados.