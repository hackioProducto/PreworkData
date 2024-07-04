---
description: >-
    Git es esencial para gestionar cambios en el desarrollo de software, facilitando la colaboración, seguridad, flexibilidad y escalabilidad.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Iniciar un Nuevo Repositorio Local

Para poder iniciar un repositorio nuevo en el entorno local, deberemos escribir los siguientes comandos en la terminal

```bash
mkdir MiProyecto # creamos una nueva carpeta que será nuestro repositorio
cd MiProyecto # accedemos a la carpeta 
git init # configuramos la nueva carpeta como un repositorio
```
 
Al escribir `git init` en la terminal se creará un nuevo subdirectorio llamado **`.git`**, que contiene todos los archivos necesarios del repositorio. Es importante saber que esta subcarpeta es una carpeta oculta y que puede que no la veamos si no tenemos configurado nuestro ordenador para que se muestren las carpetas ocultas. 

# Clonar un Repositorio Remoto

Clonar un repositorio remoto en Git significa crear una copia local exacta de un repositorio alojado en GitHub en nuestro ordenador. Esto nos va a permitir trabajar en el proyecto localmente y sincronizar los cambios con el repositorio remoto.

Para poder clonar un repositorio deberemos: 

```bash
git clone http://github.com/repositorio
```


# Flujo de Trabajo. Como Subir los Cambios a Git. 

## Agregar Archivos al Área de *Stage*.

En Git, el proceso de agregar archivos al área de *stage* (también conocida como área de preparación) es un paso crucial en el flujo de trabajo. Este paso permite que preparemos los cambios que deseamos incluir en nuestro próximo commit. 

Antes de comenzar, entendamos qué es el área de *stage*. Se trata de una zona temporal donde se colocan los cambios que deseamos confirmar en nuestro repositorio de Git. Los archivos en el área de *stage* están listos para ser incluidos en el próximo commit. Este proceso nos permite controlar qué cambios se registran en el historial del proyecto, proporcionando una manera eficiente de gestionar las modificaciones. Los pasos que debemos seguir son: 

- Verificar el estado del repositorio: Antes de agregar archivos al área de stage, es útil verificar el estado del repositorio para ver qué cambios se han realizado. Esto se puede hacer con el comando:

     ```bash
     git status
     ```
   Este comando muestra los archivos modificados, nuevos archivos no rastreados y los archivos que ya están en el área de stage.

- Agregar archivos individuales: Para agregar un archivo específico al área de *stage*, usamos el comando `git add` seguido del nombre del archivo:

     ```bash
     git add nombre-del-archivo.txt
     ```
   Este comando prepara el archivo `nombre-del-archivo.txt` para el próximo commit.

- Agregar todos los archivos modificados: Si deseamos agregar todos los archivos modificados y nuevos al área de *stage*, debemos usar el siguiente comando:

     ```bash
     git add .
     ```
   El punto (`.`) indica a Git que debe agregar todos los cambios en el directorio actual y sus subdirectorios.

- Agregar un patrón de archivos: Podemos usar patrones para agregar múltiples archivos que coincidan con un cierto criterio. Por ejemplo, para agregar todos los archivos `.txt`:

     ```bash
     git add *.txt
     ```

## Verificación

Después de agregar archivos al área de *stage*, es útil verificar nuevamente el estado del repositorio para asegurarse de que los archivos correctos estén preparados para el *commit*:

```bash
git status
```

Los archivos que han sido agregados al área de stage aparecerán en verde bajo la sección "Changes to be committed".


## Crear un Commit con los Cambios

Una vez que los archivos han sido agregados al área de *stage*, el siguiente paso en el flujo de trabajo de Git es crear un commit. Un *commit* es una instantánea de los cambios en el repositorio en un punto específico en el tiempo. Crear *commits* regularmente es una práctica fundamental en el control de versiones, ya que nos permite un seguimiento detallado del historial de cambios en el proyecto. Los pasos a seguir son: 

- Verificar el estado del área de *stage*: Antes de crear un *commit*, es útil verificar qué archivos están en el área de stage. Esto se puede hacer con el comando:

     ```bash
     git status
     ```
   Los archivos que están listos para ser confirmados (staged) aparecerán en verde bajo la sección "Changes to be committed".

- Crear un *commit*: Para crear un commit, usa el comando `git commit` seguido de la opción `-m` y un mensaje descriptivo que explique los cambios realizados:

     ```bash
     git commit -m "Descripción clara y concisa de los cambios realizados"
     ```
   El mensaje de commit debe ser significativo y descriptivo, proporcionando suficiente información sobre lo que se ha cambiado y por qué.

**Buenas prácticas a la hora de crear los mensajes de *commit*:**

Un buen mensaje de commit es crucial para mantener un historial de cambios claro y útil. Algunos consejos para escribir mensajes de *commit* efectivos:

- **Ser claro y conciso**: Describiremos los cambios realizados de manera breve pero entendible.

- **Usar el tiempo presente**: Escribiremos los mensajes como si estuviéramos dando órdenes (por ejemplo, "Añadir validación" en lugar de "Añadido validación").

- **Incluir detalles relevantes**: Si es necesario, proporcionaremos contexto sobre por qué se hicieron los cambios.



## Subir los Commits al Repositorio Remoto

Después de crear *commits* en nuestro repositorio local, es importante sincronizarlos con el repositorio remoto para compartir nuestros cambios con otros colaboradores y asegurarnos de que nuestro trabajo esté respaldado. Subir *commits* al repositorio remoto se realiza utilizando el comando `git push`. Los pasos para subir *commits* al repositorio remoto:

- Subir los *commits*: Para subir nuestros *commits* al repositorio remoto, debemos usar el comando `git push` seguido del nombre del repositorio remoto (`origin` por defecto) y la rama (veremos más adelante qué esto) a la que deseamos subir los cambios (por ejemplo, `main`):

     ```bash
     git push origin main
     ```
   Este comando envía nuestros *commits* locales en la rama `main` al repositorio remoto `origin`.

Al subir cambios a un repositorio remoto, es posible que necesitemos autenticarnos. Git nos pedirá nuestras credenciales, o podemos configurar un token de acceso personal para autenticación más segura.



## Consultar el Listado de *Commits*

Consultar el listado de *commits* en un repositorio Git es una práctica fundamental para revisar el historial de cambios, entender el progreso del proyecto y colaborar eficazmente con otros desarrolladores. Git proporciona varios comandos para visualizar el historial de commits de diferentes maneras.

El comando más común para consultar el historial de *commits* es `git log`. Este comando muestra una lista detallada de todos los *commits* realizados en el repositorio, incluyendo información como el hash del commit, el autor, la fecha y el mensaje de commit.

```bash
git log
```

Este comando mostrará una lista de commits en orden cronológico inverso (los más recientes primero).

Git `log` tiene varias opciones que te permiten personalizar la salida para hacerla más legible o para enfocarte en información específica.

- Para ver una lista más concisa de los commits, puedes usar la opción `--oneline`. Este comando muestra cada commit en una sola línea, incluyendo el hash abreviado y el mensaje del commit.

    ```bash
    git log --oneline
    ```

- Para una vista gráfica del historial de commits, incluyendo las ramas y merges, debemos usar:

    ```bash
    git log --graph --oneline --decorate --all
    ```
Donde: 

- `--graph`: Muestra una representación gráfica de la estructura de ramas y merges.

- `--oneline`: Muestra cada commit en una sola línea.

- `--decorate`: Añade nombres de ramas y etiquetas a la salida.

- `--all`: Incluye todos los commits de todas las ramas.


# Traer los Cambios del Repositorio Remoto

Traer los cambios del repositorio remoto en Git es una operación fundamental para mantener nuestra copia local del repositorio actualizada con las modificaciones realizadas por otros colaboradores. Esto se logra mediante el comando `git pull`: 

```bash
git pull
```


## Manejo de Conflictos

A veces, cuando traemos cambios del repositorio remoto, pueden ocurrir conflictos si los cambios locales y remotos se solapan. Git te notificará sobre los conflictos y te pedirá que los resuelvas manualmente.

- **Identificar los Conflictos**: Git marca los archivos en conflicto y muestra un mensaje indicando qué archivos necesitan atención.

- **Resolver los Conflictos**: Deberemos abrir los archivos en conflicto y buscar las secciones marcadas con `<<<<<<<`, `=======`, y `>>>>>>>`. Estas marcas indican las diferencias entre los cambios locales y remotos. Editaremos los archivos para resolver los conflictos y luego guardaremos los cambios.

- **Agregar los Archivos Resueltos al Área de *Stage***:  Una vez resueltos los conflictos, agregaremos los archivos al área de *stage*:

     ```bash
     git add nombre-del-archivo-resuelto
     ```

- **Finalizar la Operación de Merge**: Después de agregar los archivos resueltos al área de stage, completa el merge:

     ```bash
     git commit -m "Resolución de conflictos"
     ```

# Almacenar el Trabajo sin Comentar

En Git, a veces necesitamos interrumpir nuestro trabajo y cambiar de contexto sin perder los cambios no confirmados (*uncommitted*). Git ofrece una funcionalidad llamada "stash" que nos permite guardar temporalmente nuestro trabajo en progreso sin comprometerlo, de modo que podamos volver a un estado limpio del repositorio y luego recuperar nuestro trabajo más tarde.

```bash
git stash
```

Este comando guarda las modificaciones en el directorio de trabajo y el área de stage, y deja el repositorio en un estado limpio (sin cambios no confirmados).

Para ver una lista de todos los elementos almacenados en el stash, usaremos el comando:

```bash
git stash list
```



## Verificar Cambios del Repositorio Remoto

El comando `git fetch` lo usaremos para traer información del repositorio remoto sin fusionarla automáticamente con nuestro trabajo local. Esto permite revisar los cambios disponibles en el remoto antes de decidir integrarlos.

```bash
git fetch
```

# Videos

#### Video Uso Básico Parte I

<div align="center">
<a href="https://vimeo.com/918306353/86cd607a95">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="basico" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 

#### Video Uso Básico Parte II

<div align="center">
<a href="https://vimeo.com/918293982/8ff6cba36c">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="git" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 

# Resumen

![resumen](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Git/diagramaflujopng.png?raw=true)

### Descripción de los pasos:

- **Repositorio Remoto**: El repositorio central en plataformas como GitHub.

- **Repositorio Local**: Cada integrante del equipo clona el repositorio remoto a su máquina local.

-  **Hacer Cambios**: Realizan cambios en los archivos del proyecto.

-  **Añadir al Staging**: Los cambios se añaden al área de staging usando `git add`. 

-  **Hacer Commit**: Los cambios en el área de staging se confirman con un *commit*, usando `git commit`. 

- **Hacer Pull**: Actualizan su repositorio local con los últimos cambios del repositorio remoto.


- **Hacer Push**: Envian sus cambios al repositorio remoto, usando `git push`. 

