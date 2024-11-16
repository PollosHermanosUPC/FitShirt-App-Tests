Feature: Visualización de publicaciones

  Como representante de una empresa,
  Quiero visualizar la lista de camisetas que he subido a la plataforma
  Para hacer un seguimiento preciso de mi inventario.

    Scenario: Visualizar la lista completa de camisetas
      Given que la empresa ha subido una o más camisetas a la plataforma
      When accede a la página "Mis Camisetas"
      Then debería mostrarse una lista completa de todas las camisetas subidas por la empresa
      And la lista incluye información relevante como nombre, talla, precio, stock y fecha de publicación.