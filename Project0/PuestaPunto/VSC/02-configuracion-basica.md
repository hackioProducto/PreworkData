---
description: >-
    Aprenderemos a trabajar con la interfaz de VSC, cambiar el idioma, abrir carpetas, crear archivos y carpetas, y usar atajos de teclado para aumentar la productividad.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>



# Visión general de la interfaz

En VSC podemos encontrarnos 4 partes principales: 

- **Panel de actividades:** La encontraremos en el lado izquierdo del Visual Studio Code. Representa su centro de control, desde el cual podemos acceder a las diversas funciones del editor. Las principales funcionalidades que nos vamos a encontrar son:

    - **Explorador** (*Explorer*): Aquí es donde encontraremos el árbol de ficheros del área de trabajo. Desde aquí podremos crear nuevos archivos y carpetas dentro de nuestro proyecto.

    - **Buscar** (*Search*): Nos permite buscar una palabra en todas las carpetas y ficheros de nuestro proyecto. También nos permite reemplazar ciertos valores por otros en nuestro proyecto.

    - **Control del Código Fuente** (*Source Control*): Nos permite llevar a cabo todas las acciones de Git que necesitemos directamente desde VSC sin necesidad de usar la terminal.

    - **Ejecución y depuración** (*Run and Debug*): Nos permite ejecutar el código línea a línea, detener la ejecución en puntos específicos y examinar el estado del código en cualquier momento.

    - **Extensiones** (*Extensions*): Nos van a permitir configurar las opciones del VSC, como colorear tabulaciones, recomendaciones de autocompletado, extensiones que nos ayuden con ciertos lenguajes de programaciones como Python, C/C++, JavaScript, etc.
  
      ![Panel de actividades](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/Iconos_VSC.png?raw=true)

- **Barra de estado:** Se sitúa en la parte inferior de la aplicación. Podemos encontrar  información útil para los usuarios como por ejemplo el número de líneas y caracteres del archivo que estamos editando, qué tipo de archivo es, la última vez que se modificó el archivo o la información relativa con el control de versiones.

- **Menú:** Es el apartado que contiene las categorías de menús, se encuentra en la parte superior de la aplicación. Éstas categorías son:

    - Archivo

    - Edición

    - Visualización

    - Ir

    - Ventana

    - Ayuda

    - Terminal

- **Editor:** Es la parte central y más importante de VSC, donde editaremos los archivos en los que estemos trabajando.

# Configuración Básica de VSC

## Cambiar el idioma

Por defecto el idioma en Visual Studio Code viene en inglés. En algunos casos puede que nos interese cambiar de idioma, por ejemplo a español. Para hacer esto tendremos que:

- Presionar `cmd + shift + p` (`ctrl + shift + p`en windows), a continuación se nos abrirá en la parte superior de nuestro VSC un buscador.
  

    
- En el buscador que aparece arriba deberemos escribir **Language** o (**idioma** en español) y seleccionar la primera opción que sale en el desplegable (**Configure Display Language** en inglés o **Configurar Idioma de Pantalla** en español).

  ![Buscador de VSC](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/cambiar_lenguaje_VSC.png?raw=true)
- Una vez seleccionado aparecerá un desplegable con todos los posibles idiomas en lo que podremos seleccionar nuestro VSC. Seleccionamos el que queremos.

  ![Lista de idiomas a seleccionar](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/idiomas_VSC.png?raw=true)
- Por último, VSC nos pedirá reiniciar el VSC, aceptaremos y ya tendremos el idioma cambiado.

## Como abrir una carpeta

Desde la ventana principal de VSC tendremos dos formas de conectar la aplicación con una carpeta que tenemos en nuestro ordenador:

- A través del apartado de **Start** que nos aparece en la pantalla principal, haremos clic en la opción **Open…**

  ![Apartado Start](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/open_folder.png?raw=true)

- Se nos abrirá el Finder en Mac y el Explorador de Archivos en Windows. En esa ventana navegaremos hasta la **carpeta** que queremos abrir en VSC y le daremos a abrir.

- Una vez abierta la carpeta en VSC en el Panel de Actividades en la sección de *Explorer* (Explorador) nos aparecerá el árbol de archivos y carpetas que tenemos en esa carpeta. Algo parecido a lo que vemos en la siguiente imagen (los archivos que aparezcan dependerá de la carpeta que hayas abierto)

  ![Explorer de VSC](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/abrir_carpeta.png?raw=true)

## Como crear carpetas y archivos

Hasta ahora hemos visto cómo abrir una carpeta que está en nuestro dispositivo, es decir, un proyecto que ya teníamos creado en nuestro ordenador. Empecemos con la creación de carpetas, los pasos que deberemos seguir son:

1. Tendremos que abrir la carpeta que contendrá la nueva carpeta, igual que aprendimos en la sección anterior. Siguiendo el mismo ejemplo, lo que haremos ahora será crear una carpeta nueva dentro de la carpeta Laboratorio que abrimos anteriormente. 

    ![Creación de carpetas](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/Nombre_carpeta.png?raw=true)

2. Una vez hayamos creado la carpeta, automáticamente se nos creará una carpeta nueva en nuestro árbol de archivos a la cual le podremos poner el nombre que queramos.  

En el caso de los archivos será muy similar, seguiremos los dos mismos pasos, pero en este caso seleccionaremos el icono del archivo. 

1. Tendremos que abrir la carpeta que contendrá el nuevo archivo igual que aprendimos en la sección anterior. Después, crearemos el nuevo fichero haciendo clic en el icono de fichero.

    ![Creación de ficheros](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/crear_fichero.png?raw=true)

2. Una vez hayamos creado el fichero, se nos creará un fichero nuevo en nuestro árbol de archivos al cual le podremos poner el nombre que queramos. Es importante destacar que en el caso de la creación de ficheros deberemos poner la extensión del fichero que queramos. 

# Atajos de teclado para aumentar la productividad

En VSC tenemos una serie de atajos de teclado que nos van a permitir mejorar la eficiencia en nuestro trabajo día a día (estos atajos están explicados para Mac, en el caso de Windows será con `ctrl`) :

1. **ctrl + `** : Abre o cierra la terminal integrada.

2. **Cmd + P** : Abre el cuadro de diálogo de búsqueda de archivos.

3. **Cmd + N** : Abre un nuevo archivo.

4. **Cmd + O** : Abre un archivo existente.

5. **Cmd + S** : Guarda el archivo actual.

6. **Cmd + Shift + S** : Guarda todos los archivos abiertos.

7. **Cmd + Z** : Deshace la última acción.

8. **Cmd + X** : Corta la selección actual.

9. **Cmd + C** : Copia la selección actual.

10. **Cmd + V** : Pega la selección actual.

11. **Cmd + F** : Abre la barra de búsqueda en el editor.

12. **Cmd + Shift + F** : Busca en archivos en todo el proyecto.

13. **Cmd + G** : Ir a la línea específica.

14. **Cmd + ↑ / Cmd + ↓** : Mueve la línea actual hacia arriba o hacia abajo.

Aquí solo se muestran algunos de los atajos de teclado, pero en el siguiente link ([Windows](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf), [Mac](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)) podréis encontrar más detalle sobre estos atajos. 

# Videos

#### Cambiar el idioma, abrir carpetas y crear archivos y carpetas

<div align="center">
  <a href="https://vimeo.com/917551112/510e914c94?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Funciones sin parámetros" />
  </a>
</div>


