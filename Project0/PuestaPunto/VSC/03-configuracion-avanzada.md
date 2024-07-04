---
description: >-
    Aprenderemos a personalizar VSC con extensiones, temas y colores, ajustar configuraciones avanzadas en `settings.json`, y utilizar la terminal integrada.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Configuración de preferencias y ajustes avanzados

## Extensiones en Visual Studio Code

Esta funcionalidad la podemos encontrar en el panel de actividades de VSC y va a permitir personalizar de forma sencilla nuestro espacio de trabajo. Para usarlo tendremos que ir al menú de extensiones (icono de cuadrados en la barra lateral izquierda) y buscar e instalar las extensiones que nos ayudarán en el flujo de trabajo.

![Buscador de extensiones](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/extensiones.png?raw=true)

Algunas extensiones que os recomendamos que os instaleis son: 

-  **Python**: Proporciona soporte completo para Python, incluyendo resaltado de sintaxis, depuración, análisis de código y más. Algunas de sus funcionalidades son:

    - Resaltado de sintaxis.

    - Autocompletado inteligente.

    - Soporte para Jupyter Notebooks.

    - Herramientas de depuración.

    Para instalarla busca "Python" por Microsoft en el mercado de extensiones de Visual Studio Code.

- **Pylance**  Extensión de análisis de código para Python que proporciona un autocompletado más rápido e inteligente y una mejor verificación de tipos. Sus características son: 

    - Análisis de código en tiempo real.

    - Sugerencias de autocompletado avanzadas.

    - Soporte para tipado estático.
  
  Busca "Pylance" en el mercado de extensiones de Visual Studio Code.

- **Jupyter**: Permite trabajar con Jupyter Notebooks dentro de VS Code. Sus características son:

  - Crear, abrir y editar archivos `.ipynb`.

  - Ejecutar celdas de código dentro del entorno de VS Code.

  - Soporte para visualizar gráficos y resultados de código.

  Busca "Jupyter" en el mercado de extensiones de Visual Studio Code.


- **Excel Viewer**: Permite visualizar archivos de Excel directamente dentro de VS Code. sus funcionalidades principales son:

  - Vista previa de hojas de cálculo de Excel.

  - Soporte para formatos `.xls` y `.xlsx`.

  - Navegación fácil entre diferentes hojas de un mismo archivo.

  Busca "Excel Viewer" en el mercado de extensiones de Visual Studio Code.

- **vscode-icons**: Añade íconos de archivo para una mejor visualización y navegación de proyectos en VS Code. Sus características principales son:

  - Íconos distintivos para diferentes tipos de archivos.

  - Mejor organización visual de los proyectos.

  Busca "vscode-icons" en el mercado de extensiones de Visual Studio Code.

- **Rainbow CSV**: Ofrece resaltado de sintaxis y funcionalidades adicionales para trabajar con archivos CSV y TSV. Sus funcionalidades son:

  - Resaltado de columnas en diferentes colores.

  - Soporte para operaciones de SQL-like en archivos CSV.

  - Detección automática de delimitadores.

  Busca "Rainbow CSV" en el mercado de extensiones de Visual Studio Code.

- **Python Docstring Generator**: Facilita la creación de docstrings en Python siguiendo los formatos estándar. Sus características principales son: 

  - Generación automática de docstrings para funciones y clases.

  - Soporte para varios estilos de docstrings (Google, NumPy, Sphinx).

  Busca "Python Docstring Generator" en el mercado de extensiones de Visual Studio Code.



## Configuración de tema y color

En VSC también podemos personalizar el aspecto seleccionando un tema que se adapte a nuestras preferencias. Para eso tendremos que:

- Presionar `cmd + shift + p` (`ctrl + shift + p`en windows) y se nos abrirá en la parte superior de VSC un buscador.

- En el buscador tendremos que escribir **Preferences: Color Theme** (o **Preferencias: Tema de Color** en español). 

- Una vez seleccionado, aparecerá un desplegable con los distintos temas que podremos elegir.
    
  ![Temas y colores](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/temas.png?raw=true)


Además de los temas que nos vienen por defecto en el VSC, podremos descargarnos nuevos temas a través de las extensiones de las que hablamos previamente.  

## Ajustes de editor

Podemos modificar las configuraciones de usuario haciendo clic en el icono de la rueda en la barra lateral izquierda y seleccionando **Settings**. Aquí, podemos modificar configuraciones específicas del entorno de desarrollo. Ajusta las preferencias de formato, atajos de teclado, y otros aspectos según tus preferencias personales.


# Personalización avanzada con archivo *settings.json*

Para realizar ajustes más avanzados, puedes editar el archivo `settings.json`. Para acceder a este archivo de nuevo tendrás que presionar `cmd + shift + p` (`ctrl + shift + p`en windows) y buscar **Preferences: Open User Settings(JSON)** (**Preferencias: Abrir configuración de usuario (JSON)**, en español). Verás un archivo similar al que tenemos a continuación: 

{% file src="Archivos/settings.json" %}
Descarga este Jupyter y ábrelo en VS Code para practicar.
{% endfile %}


# Terminal Integrada

La terminal integrada es una característica fundamental en VSC que facilita la experiencia de desarrollo al proporcionar una interfaz de línea de comandos directamente dentro del entorno de desarrollo, es decir, nos va a permitir trabajar en el proyecto sin salir de VSC. 

La terminal se encuentra en la parte inferior de la ventana de VSC. Sin embargo, para abrirla tendremos que buscar en la **barra de menú**, que recordemos encontramos en la parte superior. 

![Categoría Terminal del menú VSC](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/menu_terminal.png?raw=true)

Desde esta terminal, podremos ejecutar comandos como si estuviéramos en una terminal de nuestro equipo. Además, nos permite trabajar igualmente con el sistema de control de versiones como Git.

![Vista de la Terminal](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/VSC/terminal.png?raw=true)



# Videos

#### Configuración Avanzada VSC (Configuración de preferencias y ajustes avanzados)
<div align="center">
  <a href="https://vimeo.com/917475059/5e871915f2?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Funciones sin parámetros" />
  </a>
</div>