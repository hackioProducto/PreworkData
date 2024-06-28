---
description: >-
   Aprenderemos a configurar el nombre y email en Git, activar la colorización de comandos, consultar configuraciones, crear alias, y habilitar el completado predictivo. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>

# Configuración del nombre de usuario o email

Para poder configurar la terminal con el usuario creado previamente en GitHub deberemos seguir los siguientes pasos: 

- Lo primero que tendremos que hacer es abrir la terminal y escribir los siguientes comandos: 

    ```bash
        git config --global user.name "nombre"
        git config --global user.email "email@email.com"
    ```

    - **`git config --global user.name "nombre"`**: Este comando establece nuestro nombre de usuario en Git. Cada vez que realicemos un *commit* (es decir, un registro de cambios) en un proyecto de Git, este nombre aparecerá como el autor del commit. En lugar de "nombre", deberás poner tu nombre real o tu nombre de usuario preferido.


    - **`git config --global user.email "email@email.com"`**: Este comando establece nuestra dirección de correo electrónico en Git. Al igual que con nuestro nombre de usuario, nuestra dirección de correo electrónico se asocia con todos los *commits* que realicemos. Deberemos usar una dirección de correo electrónico que utilicemos regularmente, ya que puede ser utilizada para identificarte. 


    - Al usar **`--global`**, estas configuraciones se aplicarán a todos los repositorios de Git en nuestro ordenador. Si alguna vez necesitamos usar un nombre o correo electrónico diferente para un proyecto específico, podemos ejecutar estos comandos sin el **`--global`** dentro del directorio del proyecto para sobrescribir la configuración global solo para ese proyecto.

# Activar el marco de colorización de comandos

Ahora vamos a activar el marco de colorización de comandos lo cual se refiere a configurar Git para que utilice colores en su salida en la terminal. Esto ayuda a mejorar la legibilidad de los comandos y resultados de Git, destacando diferentes tipos de información como adiciones, eliminaciones, y cambios en el código. Para eso deberemos: 

```bash
git config --global color.ui auto
```

- **`git config`**: Es el comando básico utilizado para establecer o cambiar la configuración en Git.

- **`-global`**: Este flag indica que la configuración se aplicará a todos los repositorios de Git en tu computadora, no solo a un repositorio específico. Si no usas **`-global`**, la configuración solo afectará al repositorio en el que estás trabajando actualmente.

- **`color.ui`**: Es una configuración específica en Git que controla cómo se muestran los colores en la interfaz de usuario de la línea de comandos.

- **`auto`**: Al establecer esta configuración en **`auto`**, le dices a Git que utilice colores en su salida de comando solo cuando sea apropiado, como cuando la salida del comando va a una terminal que puede mostrar colores. Esto puede hacer que la información sea más fácil de leer, ya que utiliza colores para resaltar diferentes tipos de información (como adiciones y eliminaciones en un diff).

# Consultar la configuración actual

En algunas ocasiones nos puede interesar consultar la configuración que tenemos establecidas en Git, para eso deberemos escribir los siguientes comandos en la terminal: 

```bash
git config --list

credential.helper=osxkeychain
filter.lfs.required=true
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
user.name=nameSurname
user.email=“name.surname@example.com”
```

- **`credential.helper=osxkeychain`**: Esta línea guarda las credenciales de Git (como tu nombre de usuario y contraseña) en el llavero de macOS, para que no tengas que introducirlos cada vez que hagas algo en Git.

- **`filter.lfs.required=true`**: Activa una función llamada Large File Storage (LFS) en Git, que es útil para manejar archivos grandes. Esta línea hace que su uso sea obligatorio en tu proyecto.

- **`filter.lfs.clean=git-lfs clean -- %f`**: Antes de guardar archivos grandes en Git, esta línea define cómo Git LFS los preparará. Cada vez que agregues un archivo grande, Git LFS lo procesará siguiendo esta configuración.

- **`filter.lfs.smudge=git-lfs smudge -- %f`**: Cuando descargas archivos grandes de Git, esta línea dice cómo Git LFS los configurará para que puedas usarlos.

- **`filter.lfs.process=git-lfs filter-process`**: Esta línea configura un proceso general para que Git LFS maneje los archivos grandes tanto al subirlos como al bajarlos.

- **`user.name=nameSurname`**: Establece tu nombre de usuario en Git como "nameSurname".

- **`user.email="name.surname@example.com"`**: Establece tu correo electrónico en Git como "name.surname@example.com".


# Establecer alias

Los alias en Git son atajos personalizados para comandos de Git que puedes configurar para ahorrar tiempo y esfuerzo. En lugar de escribir comandos largos repetidamente, puedes crear alias más cortos y fáciles de recordar.

```bash
git config --global alias.ci "commit"
```

- **`git config --global alias.ci "command"`**, se utiliza para crear un alias en Git, pero parece que hay un pequeño error en la sintaxis. Te explicaré cómo funciona y cómo corregirlo.

- **`git config`**: Es el comando básico para configurar opciones en Git.

- **`-global`**: Este modificador hace que la configuración se aplique a todos los repositorios en tu sistema, no solo al repositorio actual.

- **`alias.ci`**: Esto indica que estás creando un alias llamado **`ci`**.

- **`"alias"`**: Aquí es donde deberías especificar el comando de Git al que el alias **`ci`** hará referencia. Por ejemplo, si quieres que **`ci`** sea un alias para **`commit`**, deberías escribir **`commit`** en lugar de **`alias`**.

Por ejemplo, si quieres que **`git ci`** sea un alias para **`git commit`**, el comando correcto sería:

```bash
git config --global alias.ci "commit"
```

Después de ejecutar este comando, cada vez que escribas **`git ci`** en la línea de comandos, Git interpretará esto como **`git commit`**. Esto puede ahorrar tiempo y hacer que tu flujo de trabajo en la línea de comandos sea más eficiente.

# Activar el completado predictivo

Activar el completado predictivo en Git se refiere a configurar nuestra terminal para que ofrezca sugerencias automáticas y completado de comandos mientras los escribes. Esto facilita y acelera la interacción con Git al proporcionar automáticamente opciones y comandos a medida que escribes

```bash
git config --global help.autocorrect 1
```

- El comando **`git config --global help.autocorrect 1`** es una instrucción para configurar una característica específica en Git, el sistema de control de versiones. Aquí te explico qué hace:

- **`git config`**: Este es el comando utilizado para modificar la configuración de Git.

- **`-global`**: Al usar este flag, la configuración se aplica globalmente a todos los repositorios en tu computadora, no solo al repositorio en el que estás trabajando actualmente.

- **`help.autocorrect`**: Esta es la configuración que estás modificando. Controla cómo Git maneja los comandos que están mal escritos.

- **`1`**: Este número especifica el tiempo de espera antes de que Git ejecute automáticamente el comando que cree que querías escribir. El tiempo se mide en décimas de segundo. Por lo tanto, un valor de **`1`** significa que Git esperará 0.1 segundos (una décima de segundo) antes de corregir automáticamente el comando.

Por ejemplo, si escribes **`git stats`** en lugar de **`git status`**, Git reconocerá que probablemente quisiste escribir **`status`** y, después de 0.1 segundos, ejecutará automáticamente **`git status`**.

Esta función puede ser útil para ahorrar tiempo, especialmente si a menudo cometes pequeños errores al escribir comandos de Git. Sin embargo, también tiene el riesgo de ejecutar un comando incorrecto si Git malinterpreta lo que querías hacer, así que úsalo con cuidado.

# Videos

#### Video Configuración Básica de Usuario en Git parte I

<div align="center">
<a href="https://vimeo.com/919583207/bbeb8fb980?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="git" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 


#### Video Configuración Básica de Usuario en Git parte II

<div align="center">
<a href="https://vimeo.com/919583178/8e048ff6fd?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="git" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 

#### Video Configuración Básica de Usuario en Git parte III

<div align="center">
<a href="https://vimeo.com/919583150/ef23f8b510?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="git" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div> 