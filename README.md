Blog API Simulator (PSeInt)
Un simulador pedagógico de una API RESTful para la gestión de un blog personal, desarrollado íntegramente en pseudocódigo.
Este proyecto utiliza la lógica de programación para replicar el comportamiento de los principales métodos HTTP (GET, POST y DELETE), 
simulando una base de datos mediante arreglos (arrays) y manejando estados de respuesta como 200 OK, 201 Created y 404 Not Found.

Funcionalidades
El algoritmo permite realizar las operaciones básicas de una API de contenido:

POST /crear_entrada: Registra un nuevo título y autor, asignando un ID único automáticamente.

GET /obtener_entradas: Lista todos los recursos almacenados que no han sido eliminados.

DELETE /borrar_entrada: Realiza un "borrado lógico" de una entrada específica mediante su ID.

Simulación de Códigos HTTP: Respuestas visuales basadas en el éxito o error de la operación.

Conceptos Técnicos Aplicados
ConceptoImplementación en el Algoritmo
PersistenciaArreglos (Dimensiones) para ID, Título y Autor.
Borrado LógicoMarcado de ID como 0 para ocultar el registro sin alterar el índice
.Paso por ReferenciaSubprocesos que modifican la "base de datos" global.
ValidaciónControl de existencia de datos para retornar errores 404.

Requisitos e Instalación
Para ejecutar este proyecto necesitas tener instalado PSeInt.
Descarga el archivo .psc de este repositorio.
Abre PSeInt.
Carga el archivo y presiona F9 o el botón de Ejecutar.

Uso del Simulador
Al iniciar el programa, verás un menú interactivo:
Selecciona la opción 1 para crear tu primera entrada de blog.
Usa la opción 2 para verificar que los datos se guardaron correctamente.
Usa la opción 3 e ingresa el ID (ej: 1) para probar el endpoint de eliminación.

=== SIMULADOR DE API BLOGGING ===
1. POST /crear_entrada
2. GET /obtener_entradas
3. DELETE /borrar_entrada
4. Salir
   Contribuciones
Si quieres mejorar la lógica, añadir un endpoint PUT (para editar) o mejorar la interfaz visual, ¡tus aportes son bienvenidos!

Haz un Fork del proyecto.

Crea una rama con tu mejora (git checkout -b feature/mejora).

Haz un commit de tus cambios.

Envía un Pull Request.

Autor: john eduard arrechea cabeza
