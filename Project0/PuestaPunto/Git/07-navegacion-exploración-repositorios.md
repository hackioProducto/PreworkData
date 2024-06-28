---
description: >-
    Aprenderemos a usar .gitignore para excluir archivos y git log para explorar el historial de commits en Git.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Uso de `.gitignore` para Excluir Archivos

El archivo **`.gitignore`** se utiliza para decirle a Git qué archivos o directorios completos deben ignorarse y no ser incluidos en el control de versiones.

## Creando y configurando `.gitignore`

- Crea un archivo llamado **`.gitignore`** en el directorio raíz de tu repositorio.

- Dentro de **`.gitignore`**, escribe los patrones de los archivos que deseas excluir. Por ejemplo:
    
    ```bash
    # Ignorar todos los archivos .log
    *.log
    
    # Ignorar un directorio específico
    /mi_directorio/
    
    # Ignorar un archivo específico
    mi_archivo.txt
    ```
    

# Inspección del Historial con `git log`

Como ya vimos en otras lecciones, el comando `git log` es una herramienta en Git para inspeccionar el historial de commits de un repositorio. Proporciona una vista detallada de los commits, incluyendo la identificación del autor, la fecha, el mensaje del commit, y los cambios realizados.

Al ejecutar `git log`, se mostrará una lista de commits en orden cronológico inverso, es decir, el commit más reciente aparece primero. Cada entrada incluye:

- **Hash del commit**: Un identificador único para el commit.

- **Autor**: Quién hizo el commit.

- **Fecha**: Cuándo se hizo el commit.

- **Mensaje del commit**: Una breve descripción del cambio.

Algunas opciones especificas que podemos obtener de este comando son: 

- Limitar el número de *commits*: Para mostrar un número específico de commits:

    ```bash
    git log -n <número>
    ```


- Mostrar *commits* en una línea: Para obtener un resumen más compacto, mostrando cada commit en una sola línea:

    ```bash
    git log --oneline
    ```

- Ver *commits* de un archivo específico: Para ver el historial de *commits* de un archivo en particular:

    ```bash
    git log -- <ruta/al/archivo>
    ```

- Filtrar *commits* por fecha: cPara ver commits en un rango de fechas:

    ```bash
    git log --since=<fecha_inicio> --until=<fecha_fin>

    # también podemos
    git log --since="7 days ago"
    ```

- Filtrar *commits* por autor:  Para ver *commits* realizados por un autor específico:

    ```bash
    git log --author="<nombre>"
    ```



# Mostrar un Gráfico de las Ramas

Para visualizar la estructura del árbol de commits:

```bash
git log --graph
```

# Videos

#### Video Navegación y Exploración de Repositorios

<div align="center">
<a href="https://vimeo.com/919094332/66ffaa5ef6?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="homebrew" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>
