---
description: >-
  Markdown es un lenguaje de marcado ligero para formatear texto en la web, emails y documentación.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>



# Introducción a Markdown y Sintaxis

Es un lenguaje de marcado ligero que permite formatear texto de manera simple y legible. Ampliamente utilizado para escribir en la web, emails y documentación.

## Sintaxis de Markdown

- Distintos títulos usando `#`. Podemos meter hasta 6 tamaños de títulos diferentes simplemente añadiendo más `#`.

- Negrita: `**` o `__`.

- Cursiva: `*` o `_`.

- Tachado: `~~`.

- Combinar cursiva y negrita: `***` o`___`.

- Listados: `*`, `-` o `+`.

- Tabulación en los listados para agregar subniveles.

- Listados numerados: `1.`, `2.`, etc.

- Separadores y forma de líneas: `******` o `_____`.

- Crear citas: `>`.

- Bloques de código:
    
    ```markdown
        ```python  
        nuestro código
        ```
    ```
    
- Hipervínculos:
    
    ```markdown
    [Google]([https://www.google.es/](https://www.google.es/))
    ```
    
- Insertar imágenes. Para esto tenemos dos opciones:
    - Imagen ubicada en nuestro equipo:
        
        ```markdown
        ![imagen1](ruta/imagen)
        ```
        
    - Imagen de google o plataforma online:
        
        ```markdown
        ![imagen1](direccion/imagen)
        ```
        
- Tablas: Tendremos que seguir una sintaxis como la que tenemos a continuación. En este caso estamos creando una tabla 3 filas y 5 columnas.
    
    ```markdown
    |   |   |   |   |   |
    |---|---|---|---|---|
    |   |   |   |   |   |
    |   |   |   |   |   |
    |   |   |   |   |   |
    ```
    
    Esta sintaxis puede resultar un poco tediosa, [aquí](https://www.tablesgenerator.com/markdown_tables) encontraréis un recurso online para generar estas tablas de forma sencilla y eficaz.
    
- Lista de tareas: `- [ ]`, `- [x]`.

- Remarcar texto: ``texto``.

- Superscript: `H<sup>3<sup>`.

- Subscript: `H<sub>2<sub>`.

- Formatear tipo, tamaño y color de letra: Para modificar la tipografía directamente tendremos que usar html. Algunos de las opciones más sencillas son:

    - Cambiar el color del texto:
        
         **`<span style="color:blue">Texto de color azul</span>`**.
        
    - Cambiar el tamaño de la fuente
        
        **`<font size="4">Texto de tamaño 4</font>`**.
        
    - Cambiar el tipo de  fuente:
        
        **`<p style="font-family: Arial">Este es un texto con fuente Arial</p>`**
        
    - Si lo quisiéramos poner todo junto:
        
        ```markdown
        <p style="font-family: Arial"><font size="4" color="blue">Texto de tamaño 4 y color azul con fuente Arial</font></p>
        
        
- Insertar archivo/imagen descargable.
    
    ```markdown
    {% file src="../texto.txt" %}
    Descarga este fichero para mas detalles
    {% endfile %}

# Videos

#### Video Sintaxis de Markdown

<div align="center">
<a href="https://vimeo.com/963085171/f9e0a4a97d?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="terminal" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 
