---
description: >-
    Aprenderemos a crear una cuenta en GitHub, configurar la conexión SSH para enlazar su equipo, y verificar la conexión.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>

# Cuenta GitHub y Configuración SSH

**Github** es un portal creado para almacenar el código de nuestros proyectos, permitiendo a sus usuarios tener los proyectos de manera remota y controlando las versiones de las mismas a través del controlador de versiones Git. 

Además de esto, también sirve como plataforma social donde ver proyectos de otros desarrolladores, seguir las novedades de los mismos, clonar o forkear dichos proyectos y colaborar entre usuarios en proyectos propios o ajenos.

![paginaprincipal](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Git/pagina-principal.png?raw=true)

Los pasos que debemos seguir para crear una cuenta de GitHub son: 

- Lo primero que tenemos que hacer es crearnos una cuenta en la plataforma GitHub siguiendo los pasos que nos irá indicando la propia plataforma.


  ![Captura de Pantalla 2022-09-01 a las 11.44.46.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Git/cuenta-email.png?raw=true)

- Una vez tengamos la cuenta y la hayamos confirmado con nuestro correo electrónico podremos ver el Dashboard de GitHub con nuestros contactos, repositorios y configuraciones varias. 

  ![Captura de Pantalla 2022-09-01 a las 12.18.17.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Git/dashboard.png?raw=true)

# Enlazando nuestro equipo a la cuenta de GitHub

Ya tenemos nuestra cuenta de GitHub creada, pero nos falta un paso muy importante, y es enlazar nuestro equipo con la cuenta de GitHub para poder enlazar los repositorios remotos que creemos con los repositorios locales de nuestro equipo. Para ello lo enlazaremos a través de una clave SHH siguiendo los siguientes pasos. Para enlazar nuestro equipo a la cuenta de GitHub:


- Tendremos que ir a las **Settings** globales y a la sección **SSH and GPG Keys.**. Para acceder a los *settings* tendréis que a la parte superior derecha de la página de Git, donde veréis vuestro perfil (es un círculo). Deberéis hacer clic ahí y veréis algo similar a esto:

  ![settings](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Git/settings.png?raw=true)

- Una vez estemos en esta sección veremos un botón llamado **New SSH key**, el cual nos mostrará un sencillo formulario que nos pide una clave y un nombre para dicha clave.

  ![Captura de Pantalla 2022-09-01 a las 12.25.30.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Git/clavessh.png?raw=true)

- Haremos clic y nos aparecerá la siguiente pantalla:

  ![Captura de Pantalla 2022-09-01 a las 12.30.08.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Git/configuracionssh.png?raw=true)

Una vez que lleguemos a este punto, los siguientes pasos dependerán del sistema operativo que tengamos. La generación de esta clave SSH para cada sistema operativo la tenemos descrita a continuación. 

## Clave SSH en Windows


- Abrimos **Git Bash** y ejecutamos el siguiente comando sustituyendo el e-mail por el que hemos utilizado para crear la cuenta en GitHub (importante respetar las comillas antes de lanzar el comando).

  ```bash
  ssh-keygen -t ed25519 -C "your_email@example.com"
  ```

- Pulsamos enter en todas las opciones hasta que nos salga un mapa de caracteres y nos deje seguir escribiendo la terminal.
- Tras la ejecución de este comando ejecutaremos este otro para guardar en el portapapeles el código generado:

  ```bash
  clip < ~/.ssh/id_ed25519.pub
  ```

- Con el código copiado en nuestro portapapeles gracias a este comando podemos volver a la pantalla, pegarlo en el input llamado **Key** y denominar el titulo de la clave con, por ejemplo, “Equipo de sobremesa” o cualquier titulo identificativo de la misma.

## Clave SSH en MacOS

- Abrimos la terminal de Mac y ejecutamos el siguiente comando sustituyendo el e-mail por el que hemos utilizado para crear la cuenta en GitHub (importante respetar las comillas antes de lanzar el comando).

  ```bash
  ssh-keygen -t ed25519 -C "your_email@example.com"
  ```

- Pulsamos `enter` en todas las opciones hasta que nos salga un mapa de caracteres y nos deje seguir escribiendo la terminal.
- Tras la ejecución de este comando ejecutaremos este otro para guardar en el portapapeles el código generado:

  ```bash
  pbcopy < ~/.ssh/id_ed25519.pub
  ```

- Con el código copiado en nuestro portapapeles gracias a este comando podemos volver a la pantalla, pegarlo en el input llamado **Key** y denominar el titulo de la clave con, por ejemplo, “Equipo de sobremesa” o cualquier titulo identificativo de la misma.

## Clave SSH en Linux

- Abrimos la terminal de Linux y ejecutamos el siguiente comando sustituyendo el e-mail por el que hemos utilizado para crear la cuenta en GitHub (importante respetar las comillas antes de lanzar el comando).

  ```bash
  ssh-keygen -t ed25519 -C "your_email@example.com"
  ```

- Pulsamos enter en todas las opciones hasta que nos salga un mapa de caracteres y nos deje seguir escribiendo la terminal.
- Tras la ejecución de este comando ejecutaremos este otro para guardar en el portapapeles el código generado:

  ```bash
  cat ~/.ssh/id_ed25519.pub
  ```

- Con el código copiado en nuestro portapapeles gracias a este comando podemos volver a la pantalla, pegarlo en el input llamado **Key** y denominar el titulo de la clave con, por ejemplo, “Equipo de sobremesa” o cualquier titulo identificativo de la misma.

# Comprobando la conexión SSH

Si hemos realizado todos los pasos correctamente podremos comprobar que la conexión se ha realizado correctamente. Los pasos que deberemos seguir son:

- Haciendo uso de la consola o terminal pertinente dependiendo de nuestro sistema operativo realizaremos las siguientes comprobaciones:

  ```bash
  ssh -T git@github.com
  ```

  Este comando nos devolverá el siguiente mensaje:

  ```bash
  > La autenticidad del host 'github.com (DIRECCIÓN IP)' no se puede establecer.
  > La clave de huella digital RSA es SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
  > ¿Estás seguro de que quieres continuar conectado (sí/no)?
  ```

  Tendremos que escribir "yes" o "si" dependiendo del idioma que tengamos configurado en nuestra terminal y darle a `enter`. 

- Si la clave digital que aparece en el segundo mensaje es la misma que hemos generado anteriormente y que aparece en la sección de nuestras claves SSH pulsaremos y o si y nos debería devolver el mensaje siguiente:

  ```bash
  > Hi username! You've successfully authenticated, but GitHub does not
  > provide shell access.
  ```

De esta forma estaremos perfectamente conectados con GitHub y podemos empezar a trabajar en nuestros repositorios o colaborar en proyectos externos. 


# Videos

#### Video Cuenta GitHub y Configuración SSH Parte I

<div align="center">
<a href="https://vimeo.com/919075101/27811f1168?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="avanzadas" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>

#### Video Cuenta GitHub y Configuración SSH Parte II

<div align="center">
<a href="https://vimeo.com/919075077/74cf4be4b4?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="avanzadas" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>