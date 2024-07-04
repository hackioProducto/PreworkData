---
description: >-
   Estas funciones facilitan tareas como unir, dividir, convertir y modificar textos en tus hojas de cálculo. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>



# Funciones de texto y sus operadores. 


¿Sabías que Excel no solo sirve para números? También es genial para trabajar con texto. Con los operadores y funciones de texto en Excel, puedes hacer un montón de cosas útiles, como unir palabras, dividir frases, cambiar letras a mayúsculas o minúsculas, y mucho más. Algunas de las funciones y operadores de texto más comunes, con una breve descripción, cómo usarlos y ejemplos para que te quede todo claro. 


| Función             | Descripción                                                                                       | Sintaxis                                      | Ejemplo                                                    |
|---------------------|---------------------------------------------------------------------------------------------------|-----------------------------------------------|------------------------------------------------------------|
| `=LARGO()`          | Devuelve la longitud del texto de una celda.                                                      | `=LARGO(texto)`                               | `=LARGO(D6)` (Devuelve 10 si el texto en D6 tiene 10 caracteres) |
| `&`                 | Une varios textos en una sola celda.                                                              | `"texto1" & celda & "texto2"`                 | `"Amo los " & D3 & "!"` (Devuelve "Amo los Gatos Pardos!") |
| `=CONCAT()`         | Combina varios textos en una sola celda.                                                          | `=CONCAT(texto1, texto2, ...)`                | `=CONCAT(C5:D5)` (Devuelve "325 Datos Clusterizados")      |
| `=CONCATENAR()`     | Combina varios textos de distintas celdas en una sola celda.                                      | `=CONCATENAR(texto1, texto2, ...)`            | `=CONCATENAR(C3, D3)` (Devuelve "28 Gatos Pardos")         |
| `=UNIRCADENAS()`    | Une textos con un delimitador específico.                                                         | `=UNIRCADENAS(delimitador, ignorar_vacíos, texto1, texto2, ...)` | `=UNIRCADENAS("@", 1, C4, D4)` (Devuelve "420@Leche Entera") |
| `=REPETIR()`        | Repite un texto un número específico de veces.                                                    | `=REPETIR(texto, número_de_veces)`            | `=REPETIR(D6, 3)` (Devuelve "MultiversoMultiversoMultiverso") |
| `=DIVIDIRTEXTO()`   | Divide un texto usando un delimitador y coloca cada parte en celdas contiguas.                    | `=DIVIDIRTEXTO(texto, delimitador)`           | `=DIVIDIRTEXTO(D2, " ")` (Devuelve "Arroz" en una celda y "Negro" en otra celda contigua) |
| `=MAYUSC()`         | Convierte todo el texto de una celda a mayúsculas.                                                | `=MAYUSC(texto)`                              | `=MAYUSC(D6)` (Devuelve "MULTIVERSO")                      |
| `=MINUSC()`         | Convierte todo el texto de una celda a minúsculas.                                                | `=MINUSC(texto)`                              | `=MINUSC(D6)` (Devuelve "multiverso")                      |

# Videos

#### Funciones y operadores de texto
<div align="center">
  <a href="https://vimeo.com/969863773/8b79bd71db?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>