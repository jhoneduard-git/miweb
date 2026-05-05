Algoritmo API_Blog_Personal
    // Definimos dimensiones máximas para nuestra "Base de Datos"
    Dimension base_id[100], base_titulo[100], base_autor[100]
    Definir base_id, total_entradas, opcion como Entero
    Definir base_titulo, base_autor, t, a Como Cadena
    
    total_entradas <- 0
    
    Repetir
        Limpiar Pantalla
        Escribir "=== SIMULADOR DE API BLOGGING ==="
        Escribir "1. POST /crear_entrada"
        Escribir "2. GET /obtener_entradas"
        Escribir "3. DELETE /borrar_entrada"
        Escribir "4. Salir"
        Leer opcion
        
        Segun opcion Hacer
            1:
                Escribir "Ingrese Titulo:"
                Leer t
                Escribir "Ingrese Autor:"
                Leer a
                // Llamada al endpoint POST
                post_entrada(base_id, base_titulo, base_autor, total_entradas, t, a)
            2:
                // Llamada al endpoint GET
                get_entradas(base_id, base_titulo, base_autor, total_entradas)
                Esperar Tecla
            3:
                Escribir "Ingrese el ID a eliminar:"
                Leer id_eliminar
                // Llamada al endpoint DELETE
                delete_entrada(base_id, base_titulo, base_autor, total_entradas, id_eliminar)
                Esperar Tecla
        FinSegun
        
    Hasta Que opcion = 4
FinAlgoritmo

// --- ENDPOINT: POST (Crear Recurso) ---
SubProceso post_entrada(ids Por Referencia, titulos Por Referencia, autores Por Referencia, contador Por Referencia, t, a)
    contador <- contador + 1
    ids[contador] <- contador
    titulos[contador] <- t
    autores[contador] <- a
    Escribir "HTTP 201: Creado con éxito. ID: ", contador
    Esperar 1 Segundo
FinSubProceso

// --- ENDPOINT: GET (Listar Recursos) ---
SubProceso get_entradas(ids, titulos, autores, contador)
    Si contador = 0 Entonces
        Escribir "HTTP 404: No hay entradas publicadas."
    Sino
        Escribir "HTTP 200: OK"
        Escribir "ID | TITULO | AUTOR"
        Escribir "--------------------"
        Para i <- 1 Hasta contador Hacer
            Si ids[i] <> 0 Entonces
                Escribir ids[i], " | ", titulos[i], " | ", autores[i]
            FinSi
        FinPara
    FinSi
FinSubProceso

// --- ENDPOINT: DELETE (Eliminar Recurso) ---
SubProceso delete_entrada(ids Por Referencia, titulos Por Referencia, autores Por Referencia, contador, id_buscado)
    Definir encontrado Como Logico
    encontrado <- Falso
    Para i <- 1 Hasta contador Hacer
        Si ids[i] = id_buscado Entonces
            ids[i] <- 0 // Marcamos como eliminado (borrado lógico)
            encontrado <- Verdadero
        FinSi
    FinPara
    
    Si encontrado Entonces
        Escribir "HTTP 200: Entrada eliminada correctamente."
    Sino
        Escribir "HTTP 404: Error, el ID no existe."
    FinSi
FinSubProceso