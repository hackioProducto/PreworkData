---
description: >-
  Aprenderemos qué es SQL, su importancia en el mundo del dato, cómo utilizar PostgreSQL y administrar bases de datos con DBeaver.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Instalación Dbeaver

## Instalación en MacOS
- Abrimos la aplicación de Terminal en Mac.

- Escribimos el siguiente comando y lo ejecutamos.
    
    ```bash
    brew install --cask dbeaver-community
    ```
    
- Para confirmar que la instalación se realizó correctamente, buscamos entre las aplicaciones del ordenador DBeaver.

## Instalación en Windows
- Vamos a la página oficial de la aplicación, que encontramos en el [siguiente](https://dbeaver.io/download/) enlace y descargamos el ejecutable para Windows.

- Abrimos el ejecutable y seguimos la guía de instalación paso a paso.

- Una vez terminado el proceso de instalación confirmamos que tenemos al aplicación en el ordenador.

#  Instalación PostgreSQL

## Instalación en MacOS
- Abrimos la Terminal en Mac.

- Escribimos el siguiente comando y lo ejecutamos.
    
    ```bash
    brew install postgresql
    ```
        
- El siguiente paso es iniciar el proceso de PostgreSQL, lo que nos va a permitir ejecutar y gestionar las bases de datos. Si no iniciamos este proceso, no podremos trabajar con SQL. Para iniciar el servicio tendremos que escribir en la terminal:
        
    ```bash
    brew services start postgresql
    ```
    
    Después de iniciar el servicio, en la terminal nos aparecerá un mensaje parecido al siguiente: 
    
    ![Inicio del servicio de posgresql](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/postgresql-activado.png?raw=true)
    
- Aún así, para confirmar que el inicio del servicio se ejecutó con éxito podemos escribir en la terminal el siguiente comando, el cual nos listará los servicios que tenemos activados.
    
    ```bash
    brew services list
    ```
        
    Este comando nos mostrará en pantalla algo similar a lo que vemos en la siguiente imagen (nota, puede que aparezcan más servicios, no pasa nada, lo importante es que esté el servicio de postgreSQL): 
    
    ![Lista de servicios activados](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/servicios-activados.png?raw=true)
    
- Lo siguiente que vamos a hacer es crear un perfil de usuario nuevo dentro del servicio de postgreSQL. Esto lo debemos hacer porque es necesario para gestionar los permisos a las bases de datos o rastrear la actividad de un usuario en concreto. Para poder hacer esto necesitaremos tener el servicio de postgreSQL iniciado. Una vez que estemos seguros de que tenemos el servicio activado, deberemos escribir el siguiente comando en la terminal:
    
    ```bash
    psql -d postgres
    ```
        
    Este comando hará que la terminal cambie un poco, y deberemos ver algo similar a lo siguiente: 
    
    ![Inicialización del servivio de postgreSQL](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/inicio-postgresql.png?raw=true)
        
- Una vez que estemos en este punto crearemos un nuevo usuario usando el siguiente comando:
    
    ```sql
    CREATE ROLE my_user WITH LOGIN PASSWORD 'admin';
    ```
    
    Esto creará un nuevo usuario llamado **my_user** con una contraseña **admin.** 
    
    **Nota**: Por experiencia sabemos que los usuarios y contraseñas acaban perdiéndose u olvidándose. Por favor, seguid escrupulosamente estas directrices. De lo contrario no nos responsabilizamos de posibles imprevistos durante el curso.
    
- Lo siguiente que haremos será dar permiso a este usuario para crear bases de datos usando el siguiente comando:
    
    ```sql
    ALTER ROLE my_user CREATEDB;
    ```
    
- Una vez hayamos terminado este proceso, deberemos salir, para eso escribiremos el siguiente comando en la terminal (después de ejecutarlo volveremos a ver nuestra terminal como estamos acostumbrados):
    
    ```sql
    QUIT
    ```
    
- Por último, o cuando no queramos usar postgreSQL, deberemos detener el servicio usando el siguiente comando
    
    ```bash
    brew services stop postgresql
    ```
    
- Podríamos confirmar que el servicio se ha parado correctamente usando el comando aprendido anteriormente
    
    ```bash
    brew services list
    ```

## Instalación en Windows

- Visita la [página oficial](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) de PostgreSQL y descarga el ejecutable con la versión más reciente. 

- Ejecuta el archivo de instalación descargado en el paso anterior. Sigue las instrucciones del asistente de instalación:
    - Bienvenida: Haz clic en "Next".

    - Selección de componentes: Asegúrate de que las siguientes opciones estén seleccionadas (PostgreSQL Server, Stack Builder) y haz clic en "Next".

    - Directorio de instalación: Deja el directorio que viene por defecto y haz clic en "Next". 

    - Datos del clúster: Deja el directorio que viene por defecto y haz clic en "Next".

    - Contraseña del superusuario: Introduce y confirma una contraseña para el usuario postgres (el superusuario de PostgreSQL). En general os recomendamos que pongáis 'admin'. Sea como sea guardad bien la contraseña por si la necesitamos en otro momento. 

    - Puerto: El puerto predeterminado es 5432. Puedes cambiarlo si es necesario, pero para la mayoría de los usuarios, el puerto predeterminado está bien. Haz clic en "Next".

    - Configuración regional: Selecciona tu configuración regional y haz clic en "Next".
    
    - Resumen: Revisa tu configuración y haz clic en "Next" para iniciar la instalación.



# Conexión PostgreSQL y Dbeaver
        
## Conexión en MacOS

- Antes de terminar todo este proceso, nos queda conectar PostgreSQL con DBeaver. Este paso es esencial porque nos va a permitir usar una interfaz gráfica (DBeaver) para escribir las consultas en vez de hacerlo por la terminal, como hemos estado haciendo hasta ahora. Para eso tendremos que abrir la aplicación de DBeaver. En la parte superior izquierda encontraremos un icono de un enchufe con un +, haremos clic.
    
    ![Icono de iniciar una conexión](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion1.png?raw=true)
    
- Se nos abrirá una ventana nueva, donde veremos diferentes tipos de BBDD, tendremos que buscar PostgreSQL y dar al botón de siguiente.
    
    ![Selección de la BBDD](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion2.png?raw=true)
    
- Se nos volverá a abrir una ventana nueva, en la cual tendremos que hacer algunos cambios:
    - En el apartado de **Nombre de Usuario** deberemos poner **my_user.**

    - En el apartado de **Contraseña** deberemos poner **admin** (o la contraseña que hubiéramos puesto).

    - Después de hacer los cambios deberemos darle a **Finalizar**.
        
        ![Interfaz de las propiedades de conexión](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion3.png?raw=true)
        
- Una vez terminado este proceso, en la parte superior izquierda de la aplicación deberemos ver que aparece postgreSQL, lo que significaría que la conexión se realizó con éxito.
    
    ![Conexión ya creada](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion4.png?raw=true)
        

## Conexión en Windows

- Antes de terminar todo este proceso, nos queda conectar PostgreSQL con DBeaver. Este paso es esencial porque nos va a permitir usar una interfaz gráfica (DBeaver) para escribir las consultas en vez de hacerlo por la terminal, como hemos estado haciendo hasta ahora. Para eso tendremos que abrir la aplicación de DBeaver. En la parte superior izquierda encontraremos un icono de un enchufe con un +, haremos clic.
    
    ![Icono de iniciar una conexión](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion1.png?raw=true)
    
- Se nos abrirá una ventana nueva, donde veremos diferentes tipos de BBDD, tendremos que buscar PostgreSQL y dar al botón de siguiente.
    
    ![Selección de la BBDD](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion2.png?raw=true)
    
- Se nos volverá a abrir una ventana nueva, en la cual tendremos que hacer algunos cambios:
    - En el apartado de **Nombre de Usuario** deberemos poner **my_user.**

    - En el apartado de **Contraseña** deberemos poner **admin** (o la contraseña que hubiéramos puesto).

    - Después de hacer los cambios deberemos darle a **Finalizar**.
        
        ![Interfaz de las propiedades de conexión](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion3.png?raw=true)
        
- Una vez terminado este proceso, en la parte superior izquierda de la aplicación deberemos ver que aparece postgreSQL, lo que significaría que la conexión se realizó con éxito.
    
    ![Conexión ya creada](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion4.png?raw=true)
        
