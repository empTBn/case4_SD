# case4_SD

en conjunto con el profesor determine al menos uno de los motores de bases de datos a utilizar en su proyecto. luego investigue para algún lenguaje de su preferencia entre c#, java, go, python o typescript las tecnologías disponibles en ese lenguaje para la implementación de un servicio REST.

una vez que haya determinado tanto la base de datos, el lenguaje de programación y el framework para desarrollar el rest proceda:

  cree una tabla o collection en la base de datos y llenela con 60000 registros ficticios
  agregue un endpoint a su REST api que dado un query y o parámetros retorne aproximadamente un 35% de los registros
  agregue otro endpoint a su REST api que haga exactamente lo mismo del punto #2 y que haga uso de un fixed size connection pool para el acceso de la base de datos
  agregue otro endpoint a su REST api que haga exactamente lo mismo del punto #2 y #3 y agregue una cache por medio de un redis server, de tal forma que los parámetros del endpoint sirvan de llave para la cache, permitiendo que hayan cache hits y fails entre los requests
  una vez terminado y probados los endpoints dockerice la solución, usando un container para el api, otro para redis y otro para la base de datos. utilice docker compose para dockerización. este paso se pudo haber hecho desde el paso #1.
  utilizando postman o jmeter, proceda a ejecutar un test de stress sobre la solución implementada, atacando a los 3 endpoints, configure la prueba para que se simulen 20 clientes (threads) concurrentes haciendo los requests continuamente con una pausa de 233ms entre cada request de cada thread. la prueba completa corre durante 1 minuto.
  extraiga los resultados obtenidos por el software de pruebas (jmeter o postman), de lo que tenga para monitorear conexiones de base de datos, cpu y memoria del lado de los servidores, tabule toda la información asegurándose de tener medidas de las variables:

  cpu, memoria y conexiones de la base de datos para cada endpoint
  cpu, memoria y conexiones de redis para cada endpoint
  cpu, memoria y conexiones del backend api para cada endpoint
  tiempo promedio de respuesta para cada endpoint

  emita las conclusiones cuantitativas basadas en los resultados obtenidos que contrasten los cambios de rendimiento usando el framework seleccionado para REST, la incorporación de pool, y de cache respectivamente
  suba todo el proyecto a un repositorio de git y documente todo lo anterior en el readme.md

  fecha para el último commit: 29-09-2024, 29 de setiembre a las 10am
  la revisión será con cita con el profesor
  cualquier sospecha de copia implicará una nota de cero
