---
description: >-
  En esta sección aprenderemos qué es la terminal. Una interfaz de línea de comandos que permite a los usuarios interactuar directamente con el sistema operativo.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>



⚠ **NOTA ANTES DE EMPEZAR** Los alumnos que tengan ordenador con **sistema operativo de Windows** les recomendamos instalarse Git Bash. Para su instalación deberéis seguir los siguientes pasos: 

- Vamos la [página oficial](https://git-scm.com/downloads) de Git Bash y descargamos el ejecutable.

- Una vez descargado, abrimos el ejecutable y siguimos los pasos para su instalación.

- Por último, para confirmar que la instalación ocurrió con éxito, buscamos la aplicación Git Bash en nuestro ordenador.

# Fundamentos de la Terminal

- **Terminal:** Es una interfaz de línea de comandos que nos permite interactuar con el sistema operativo. En lugar de utilizar la interfaz gráfica de usuario (GUI) con ventas y elementos visuales, la terminal proporciona un entorno basado en texto donde ingresaremos comandos para realizar ciertas acciones.  Es decir, hasta ahora utilizábamos la interfaz gráfica para trabajar con el ordenador haciendo clic en carpetas y archivos. Ahora utilizaremos la terminal a través de unos comandos para realizar todas estas acciones.

- **Bash (acrónimo de *Bourne Again Shell*)**: Es un intérprete de comandos y un lenguaje de *scripting* que se utiliza en sistemas operativos Unix y Linux. Es decir, será nuestro asistente personal, que nos permitirá dar instrucciones especificas a través de la terminal para llevar a cabo diferentes acciones.

#### Video Fundamentos de la Terminal

<div align="center">
<a href="https://vimeo.com/914369995/291b478417?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="homebrew" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>


# Comandos de la Terminal

## Comandos básicos:

- `man`: muestra el manual del comando que especifiquemos.
    
    ```bash
    man ls
    ```
    

- `clear`: limpia la terminal.

- `history`: muestra todo el historial de comandos que hemos hecho en la terminal.

- `echo`: muestra en terminal el mensaje que especifiquemos.
    
    ```bash
    echo "hola"
    ```
    

## Operaciones de directorio:

- `cd` (*change directory*): para cambiar de directorio.

- `pwd`: mostrar el directorio actual.

- `ls` (*list*): listar todos los archivos y carpetas que hay en el directorio actual. Opciones:

    - `ls -a` : muestra todos los archivos, incluso los ocultos.

    - `ls -R`: lista de forma recursiva.

    - `ls -r`: ordena el listado al revés.

    - `ls -t`: ordena los resultados basándose en la última modificación.

    - `ls -S`: ordena por el tamaño del fichero.

    - `ls -l`: muestra los detalles de cada fichero y carpeta.

    - `ls -1`: lista los archivos y carpetas mostrando cada uno de ellos en una fila.

    - `ls -m`: lista los archivos y carpetas separados por comas.

- `mkdir` (make directory)

#### Video Comandos Básicos y Operaciones con Ficheros

<div align="center">
<a href="https://vimeo.com/915219342/a4c62c93a1?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="homebrew" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>

## Operaciones con ficheros

- `touch`: crear un archivo.

- `cat`: muestra el contenido de un fichero. Además:
    
    ```bash
    # concatena y muestra el contenido de los dos ficheros
    
    cat lorem.txt lorem2.txt
    ```
    
- `less`: muestra el contenido del archivo.

- `file`: muestra el tipo del archivo.

- `cp`(*copy*): copia carpetas y archivos.
    
    ```bash
    # copia el contenido del archivo lorem al archivo lorem2
    
    cp lorem.txt lorem2.txt
    
    # copia el archivo lorem en la carpeta1
    
    cp lorem.txt carpeta1
    ```
    
- `mv` (move): es como el cortar que conocemos.

- `head`: muestra las 10 primeras líneas del archivo.
    
    ```bash
    # muestra la primera fila del fichero.
    
    head -n 1 lorem.txt
    ```
    
- `tail`: muestra las 10 últimas líneas del archivo.
    
    ```bash
    # muestra la primera fila del fichero.
    
    tail -n 1 lorem.txt
    ```
    
- `rm` (*remove*): elimina un fichero o archivo.
    
    ```bash
    # elimina el fichero lorem2.txt
    
    rm lorem2.txt
    ```
    
- `rmdir`: eliminar una carpeta o directorio.
    
    ```bash
    # elimina la carpeta2
    
    rmdir carpeta2
    
    # también se puede usar
    
    rm -r carpeta2
    ```
    
- `nano`: permite editar el contenido de un fichero en el editor de la terminal.

- `echo`: inserta el contenido que especifiquemos en un fichero.
    
    ```bash
    # añade “ADIOS” al fichero
    
    echo "ADIOS" >> lorem.txt
    
    # sobreescribe el contenido del fichero por “ADIOS”. Cuidado porque te cargas todo el contenido anterior
    
    echo “ADIOS” > lorem.txt
    ```
    
#### Video Comandos de Operaciones con Ficheros

<div align="center">
<a href="https://vimeo.com/915219342/a4c62c93a1?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="homebrew" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>


## Búsqueda de ficheros

- `find`: busca archivos y ficheros en un ubicación específica.

- `grep`: busca patrones dentro de un archivo.

- `*` (comodín): indica cualquier cosa.

## Gestión de procesos

- `ps`: muestra una captura de los procesos del ordenador.

- `top`: muestra los procesos en tiempo real.

## Creación de alias

Los alias  son abreviaturas personalizadas para comandos largos, lo que permite ejecutar comandos de forma más sencilla y rápida. Estos alias son especialmente útiles para comandos largos y difíciles de recordar, ya que permiten a los usuarios simplificar la ejecución de los mismos. 

- ¿Cómo lo creamos?
    
    ```bash
    alias proyecto="cd /Users/lola.lopez/Documents"
    ```
    

⚠️ **Después de crear el alias debemos reiniciar la terminal y ya podremos usarlos.**

#### Video Búsqueda de Ficheros, Gestión de Procesos y Creación de Alias

<div align="center">
<a href="https://vimeo.com/913638122/f0e17b0d6d?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="terminal" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 

# Cambiar el aspecto de la Terminal

En el caso de que usemos Git Bash, no podremos configurar *oh-my-zhs*. En el caso de Mac deberéis seguir los siguientes pasos: 

- Para cambiar el aspecto de la terminal lo primero que deberemos hacer es instalar oh-my-zsh. Para eso, deberemos dirigirnos a la [siguiente](https://ohmyz.sh/#install) página web y hacer clic en el botón de **Install oh-my-zsh.**

![Página oh-my-zsh](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Terminal/pagina_principal.png?raw=true)

- A continuación veremos por pantalla un código similar a el que vemos a continuación. Deberemos copiarlo y pegarlo en la terminal.
    
    ![Código instalación oh-my-zsh](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Terminal/codigoinstalacion.png?raw=true)
    
- Una vez se haya terminado el proceso de instalación veremos en la terminal el siguiente mensaje. Si vemos esto en pantalla es que la instalación a ocurrido con éxito.
    
    ![Mensaje de éxito en la instalación](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Terminal/terminal.png?raw=true)
    

- Para cambiar el tema de la terminal deberemos ir a la [siguiente](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) página web, donde encontraremos diversos temas que podremos usar en nuestra terminal.
- Para cambiarlos deberemos ir a la terminal y escribir:
    
    ```bash
    cd
    ```
    
- A continuación escribir en la terminal, lo que hará que se abra Visual Studio Code.
    
    ```bash
    code .
    ```
    
- En el árbol de archivos de la ventana de VSC que se nos abrió deberemos abrir el archivo que se llama **.zshrc.** Este archivo deberá tener un aspecto similar al que vemos a continuación:
    
    ![zsh_visual](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Terminal/tema.png?raw=true)
    

- En ese documento, deberemos buscar la variable **ZSH_THEME.** En el caso de la imagen esta en la linea 11 y pone **ZSH_THEME=”src”.** Entre las comillas deberemos poner el tema que más nos guste.

# Videos


#### Video Cambio Aspecto Terminal

<div align="center">
<a href="https://vimeo.com/913702281/0d0e21448d?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="terminal" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 
