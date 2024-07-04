---
description: >-
   Estas funciones facilitan tareas como el filtrado o la ordenación en tus hojas de cálculo. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Funciones para la Manipulación de Datos en Excel   


¿Sabías que con Excel puedes hacer mucho más que solo sumar y restar? También puedes filtrar, ordenar y manipular tus datos de maneras muy poderosas. Con estas funciones, podrás filtrar datos según una condición, ordenarlos por una columna específica, encontrar valores únicos y hasta generar secuencias de números. 



| Función             | Descripción                                                                                       | Sintaxis                                      | Ejemplo                                                    |
|---------------------|---------------------------------------------------------------------------------------------------|-----------------------------------------------|------------------------------------------------------------|
| `=FILTRAR()`        | Filtra un rango de datos en función de una condición específica.                                  | `=FILTRAR(rango, condición)`                  | `=FILTRAR(D1:D6, C1:C6 > 27)` (Filtra datos en D1:D6 donde C1:C6 es mayor a 27) |
| `=ORDENAR()`        | Ordena un rango de datos en función de una columna específica.                                    | `=ORDENAR(rango, índice_columna)`             | `=ORDENAR(A1:E6, 4)` (Ordena los datos de A1:E6 por la columna 4) |
| `=ORDENARPOR()`     | Ordena un rango de datos en función de otro rango de celdas.                                      | `=ORDENARPOR(rango, rango_criterio)`          | `=ORDENARPOR(A1:E6, D1:D6)` (Ordena A1:E6 por los valores en D1:D6) |
| `=UNICOS()`         | Genera un conjunto de datos con valores únicos de un rango especificado.                          | `=UNICOS(rango)`                              | `=UNICOS(A1:A6)` (Devuelve los valores únicos de A1:A6)    |
| `=SECUENCIA()`      | Genera una secuencia de números con un número específico de filas y columnas, empezando por un valor inicial y con un incremento definido. | `=SECUENCIA(filas, columnas, inicio, incremento)` | `=SECUENCIA(5, 1, 3, 2)` (Genera una secuencia de 5 filas, 1 columna, empezando en 3 y sumando 2 en cada paso) |



# Videos

#### Manipulación de Datos
<div align="center">
  <a href="https://vimeo.com/969892424/8ab4eb08c0?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>

