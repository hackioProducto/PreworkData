---
description: >-
   En esta lección aprenderemos a escribir commits claros, mantener repositorios limpios, firmar commits con GPG, y asegurar repositorios remotos mediante control de acceso. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Mejores Prácticas en Git

## Estrategias para escribir buenos **commits**

- **Mensajes Claros y Descriptivos**: Cada *commit* debe tener un mensaje que explique claramente qué cambios se han realizado y por qué.

- **Tamaño del Commit**: Haremos *commits* pequeños y enfocados. Un *commit* debe representar un único cambio lógico.

- **Uso de Conventions**: Consideraremos seguir una convención de nomenclatura para nuestros mensajes de *commit*, como [Conventional **commits**](https://www.conventionalcommits.org/).

## Mantenimiento del repositorio

- **Limpieza regular**: Utilizaremos comandos como **`git prune`** y **`git gc`** para limpiar referencias obsoletas y optimizar nuestro repositorio.

- **Etiquetado efectivo**: Usaremos etiquetas para marcar puntos importantes en la historia del repositorio, como lanzamientos o versiones.

# Seguridad en Git

## Firma de *commits* y Etiquetas con GPG

La firma de *commits* y etiquetas con GPG asegura que provengan de una fuente confiable, evitando la suplantación de identidad. ¿Cómo debemos hacerlo?

- Generaremos una clave GPG y la asociaremos con nuestra cuenta de Git.

- Configuraremos Git para firmar automáticamente nuestros *commits* y etiquetas con nuestra clave GPG.

    ```bash
    git commit -S -m "El mensaje"
    git tag -s v1.0.0 -m "Etiqueta firmada"
    ```
    

# Seguridad en repositorios remotos

- **Control de Acceso**: Nos asegutatemos de que solo las personas autorizadas tengan acceso a nuestro repositorio, especialmente si contiene información sensible.

- **Revisión de Código**: Usaremos pull requests y revisión de código para detectar posibles vulnerabilidades o errores antes de que se integren en la rama principal.

- **Uso de HTTPS o SSH**: Nos aseguraremos de utilizar conexiones seguras (HTTPS o SSH) para interactuar con nuestros repositorios remotos.



# Videos

#### Video Buenas Prácticas

<div align="center">
<a href="https://vimeo.com/926178532/cef260ecf0?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="avanzadas" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>

