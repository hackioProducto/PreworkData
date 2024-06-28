---
description: >-
  Aprenderemos qué es SQL, su importancia en el mundo del dato, cómo utilizar PostgreSQL y administrar bases de datos con DBeaver.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Instalación Dbeader

## Instalación en MacOS
- Abre la aplicación de Terminal en Mac.

- Escribe el siguiente comando y ejecútalo.
    
    ```bash
    brew install --cask dbeaver-community
    ```
    
- Para confirmar que la instalación se realizó correctamente, busca entre las aplicaciones de tu ordenador DBeaver.

## Instalación en Windows
- Ve a la página oficial de la aplicación, que encontraras en el [siguiente](https://dbeaver.io/download/) enlace y descarga el ejecutable para Windows.

- Abre el ejecutable y sigue la guía de instalación paso a paso.

- Una vez terminado el proceso de instalación confirmar que tenemos al aplicación en el ordenador.

#  Instalación PostgreSQL

## Instalación en MacOS
- Abre la Terminal en Mac.

- Escribe el siguiente comando y ejecútalo.
    
    ```bash
    brew install postgresql
    ```
        
- El siguiente paso es iniciar el proceso de PostgreSQL, lo que nos va a permitir ejecutar y gestionar las bases de datos. Si no iniciamos este proceso, no podremos trabajar con SQL. Para iniciar el servicio tendremos que escribir en la terminal:
        
    ```bash
    brew services start postgresql
    ```
    
    Después de iniciar el servicio, en la terminal nos aparecerá un mensaje parecido al siguiente: 
    
    ![Captura de pantalla 2024-01-31 a las 9.54.15.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/postgresql-activado.png?raw=true)
    
- Aún así, para confirmar que el inicio del servicio se ejecutó con éxito podemos escribir en al terminal el siguiente comando, el cual nos listará los servicios que tenemos activados.
    
    ```bash
    brew services list
    ```
        
    Este comando nos mostrará en pantalla algo similar a lo que vemos en la siguiente imagen (nota, puede que aparezcan más servicios, no pasa nada, lo importante es que este el servicio de postgreSQL): 
    
    ![Captura de pantalla 2024-01-31 a las 9.57.15.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/servicios-activados.png?raw=true)
    
- Lo siguiente que vamos a hacer es crear un perfil de usuario nuevo dentro del servicio de postgreSQL. Esto lo debemos hacer porque es necesario para gestionar los permisos a las bases de datos o rastrear la actividad de un usuario en concreto. Para poder hacer esto necesitaremos tener el servicio de postgreSQL iniciado. Una vez que estemos seguros que tenemos el servicio activado, deberemos escribir el siguiente comando en la terminal:
    
    ```bash
    psql -d postgres
    ```
        
    Este comando hará que la terminal cambie un poco, y deberemos ver algo similar a lo siguiente: 
    
    ![Captura de pantalla 2024-01-31 a las 10.04.35.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/inicio-postgresql.png?raw=true)
        
- Una vez que estemos en este punto crearemos un nuevo usuario usando el siguiente comando:
    
    ```sql
    CREATE ROLE my_user WITH LOGIN PASSWORD 'admin';
    ```
    
    Esto creará un nuevo usuario llamado **my_user** con una contraseña **admin.** 
    
    **Nota**: Por experiencia sabemos que los usuarios y contraseñas acaban perdiéndose u olvidándose. Por favor, seguid escrupulosamente estas directrices de lo contrario no nos responsabilizamos de posibles imprevistos durante el curso.
    
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





# Conexión PostgreSQL y Dbeader
        
## Conexión en MacOS

- Antes de terminar todo este proceso, nos queda conectar PostgreSQL con DBeader. Este paso es esencial porque nos va a permitir usar una interfaz gráfica (DBeader) para escribir las consultas en vez de hacerlo por la terminal, como hemos estado haciendo hasta ahora. Para eso tendremos que abrir la aplicación de DBeader. En la parte superior izquierda encontraremos un icono de un enchufe con un +, haremos clic.
    
    ![Captura de pantalla 2024-02-01 a las 9.45.08.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion1.png?raw=true)
    
- Se nos abrirá una ventana nueva, donde veremos diferentes tipos de BBDD, tendremos que buscar PostgreSQL y dar al botón de siguiente.
    
    ![Captura de pantalla 2024-02-01 a las 9.51.32.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion2.png?raw=true)
    
- Se nos volverá a abrir una ventana nueva, en la cual tendremos que hacer algunos cambios:
    - En el apartado de **Nombre de Usuario** deberemos poner **my_user.**

    - En el apartado de **Contraseña** deberemos poner **admin** (o la contraseña que hubiéramos puesto).

    - Después de hacer los cambios deberemos darle a **Finalizar**.
        
        ![Captura de pantalla 2024-02-01 a las 9.56.58.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion3.png?raw=true)
        
- Una vez terminado este proceso, en la parte superior izquierda de la aplicación deberemos ver que aparece postgreSQL, lo que significaría que la conexión se realizó con éxito.
    
    ![Captura de pantalla 2024-02-01 a las 10.01.04.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion4.png?raw=true)
        

## Conexión en Windows

- Antes de terminar todo este proceso, nos queda conectar PostgreSQL con DBeader. Este paso es esencial porque nos va a permitir usar una interfaz gráfica (DBeader) para escribir las consultas en vez de hacerlo por la terminal, como hemos estado haciendo hasta ahora. Para eso tendremos que abrir la aplicación de DBeader. En la parte superior izquierda encontraremos un icono de un enchufe con un +, haremos clic.
    
    ![Captura de pantalla 2024-02-01 a las 9.45.08.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion1.png?raw=true)
    
- Se nos abrirá una ventana nueva, donde veremos diferentes tipos de BBDD, tendremos que buscar PostgreSQL y dar al botón de siguiente.
    
    ![Captura de pantalla 2024-02-01 a las 9.51.32.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion2.png?raw=true)
    
- Se nos volverá a abrir una ventana nueva, en la cual tendremos que hacer algunos cambios:
    - En el apartado de **Nombre de Usuario** deberemos poner **my_user.**

    - En el apartado de **Contraseña** deberemos poner **admin** (o la contraseña que hubiéramos puesto).

    - Después de hacer los cambios deberemos darle a **Finalizar**.
        
        ![Captura de pantalla 2024-02-01 a las 9.56.58.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion3.png?raw=true)
        
- Una vez terminado este proceso, en la parte superior izquierda de la aplicación deberemos ver que aparece postgreSQL, lo que significaría que la conexión se realizó con éxito.
    
    ![Captura de pantalla 2024-02-01 a las 10.01.04.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/conexion4.png?raw=true)
        
