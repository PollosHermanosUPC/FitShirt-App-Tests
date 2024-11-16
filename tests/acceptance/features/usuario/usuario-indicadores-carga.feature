Feature: Indicadores de estado de carga

    Como usuario,
    Quiero ver un indicador visual mientras se procesa una operación
    Para saber que la aplicación está cargando.

    Scenario: Indicador al cargar una página
        Given que el usuario navega por la aplicación
        When accede a una nueva página
        Then debería aparecer un indicador visual de carga.

    Scenario: Indicador al cargar una operación
        Given que el usuario realiza una operación que requiere tiempo y recursos
        When la operación está en curso
        Then debería aparecer un indicador visual de carga.

    Scenario: Carga completada
        Given que el usuario está viendo un indicador de carga
        When se completa la carga de la página o la operación
        Then el indicador de carga debería desaparecer.