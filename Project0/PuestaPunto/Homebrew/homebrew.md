---
description: >-
  En esta sección aprenderemos que es Homebrew y como instalarlo en nuestros ordenadores. SOLO PARA USUARIOS MAC.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Homebrew

Homebrew es un sistema de gestión de paquetes exclusivo para macOS que permite a los usuarios instalar, actualizar y gestionar fácilmente software y utilidades adicionales en sus sistemas.

# Instalación de Homebrew (Mac)

- Abrimos la aplicación Terminal en Mac.
  
- Vamos a este sitio: [https://brew.sh/](https://brew.sh/) y copiamos el código de línea debajo del título **Install homebrew**.
    
    ![Página homebrew](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Homebrew/paginahomebrew.png?raw=true)
    
- Luego, pegamos el código copiado en el paso anterior en nuestra terminal y lo ejecutamos.
    
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
    
    ⚠ **Dependiendo de tu versión de MacOS, es posible que veas un fragmento de código diferente. Asegúrate de utilizar el que le proporciona el sitio web.**
    
- Después de este paso, en terminal nos pedirá la contraseña, tendremos que ver algo parecido a lo que aparece en la imagen.
    
    ![contraseña](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Homebrew/contrasena.png?raw=true)
    
    ⚠ **¡Atención! Cuando empecéis a escribir la contraseña parecerá que no estáis escribiendo nada. Es normal, es un sistema de seguridad, pero en realidad sí que estáis escribiendo.**
    
- Una vez insertada la contraseña y pasados unos segundo nos puede aparecer un mensaje como el siguiente en la terminal. Presionaremos la **tecla ENTER** para continuar con el proceso de instalación.
    
    ![return](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Homebrew/errorhomebrew.png?raw=true)
    
- Una vez haya terminado el proceso de instalación (puede tardar unos minutos) nos aparecerá un mensaje en la pantalla parecido al siguiente:
    
    ![warning.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Homebrew/warning.png?raw=true)
    
- Tendremos que añadir por terminal el comando que nos pide, simplemente copiamos y pegamos en la terminal el mensaje que aparece en la misma, será muy similar al que vemos a continuación.

 Recomendamos no copiar el mensaje que ponemos en la guía ya que cada comando dependerá de cada usuario:
    
    ```bash
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/tu.usuario
    /.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```
    
- Terminaremos el proceso de instalación de brew ejecutando en la terminal el siguiente comando:
    
    ```
    brew update
    ```

# Videos

#### Instalación Homebrew

<div align="center">
  <a href="https://vimeo.com/915234194/04f94a76e9?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="homebrew" />
  </a>
</div>
