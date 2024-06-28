---
description: >-
  En este apartado tendremos todo el contenidod e SQL que debemos aprender en el project 0.  
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="logo hack(io)" />
</div>



# Introducción a SQL

SQL, o Lenguaje de Consulta Estructurado, es un lenguaje de programación utilizado para interactuar con bases de datos relacionales. Nos va a permitir definir la estructura de los datos, manipular y consultar información almacenada en las bases de datos. 

# Glosario

- **Bases de Datos:** Base de Datos que organiza los datos en estructuras tabulares (tablas) y utiliza relaciones entre las tablas para representar y conectar la información la información.

- **Esquema Entidad-Relación:** Es una representación gráfica de la estructura lógica de una base de datos. Utiliza diagramas ER para ilustrar las entidades (objetos o conceptos) dentro del sistema, las relaciones entre esas entidades y los atributos (características o propiedades) de las entidades. Los diagramas ER ayudan en el diseño y modelado de bases de datos, facilitando la comprensión de cómo los datos están organizados e interconectados.

- **Tabla:**  Es una estructura que organiza los datos en filas y columnas. Cada columna representa un **campo o atributo**, y cada fila contiene un **registro**.

- **DMBS (Sistema de Gestión de Bases de Datos):** Es un software que proporciona una interfaz para interactuar con una base de datos. Su función principal es facilitar la creación, manipulación y administración de bases de datos, garantizando la integridad, seguridad y eficiencia en el acceso a los datos. En el caso de SQL tenemos varios tipos, MySQL, PostgreSQL, Oracle Database y Microsoft SQL Server. En nuestro caso usaremos PostgreSQL.

- **DDL (*Data Definition Language*):** Conjunto de comandos SQL para crear, modificar y eliminar estructuras de **base de datos.**

- **DML (*Data Manipulation Language*):** Conjunto de comandos SQL utilizado para manipular **los datos** en una base de datos, como la inserción, actualización, eliminación y consulta de datos.

- **CRUD: E**s un acrónimo que representa las operaciones fundamentales de gestión de datos: *Create* (Crear), *Read* (Leer), *Update* (Actualizar) y *Delete* (Borrar). Estas operaciones son utilizadas en bases de datos para realizar tareas como la creación, lectura, actualización y eliminación de datos.


- **Cláusula**: Es un componente de una instrucción SQL que especifica condiciones, ordenamientos o restricciones sobre los datos que se están consultando o manipulando. Ejemplos comunes incluyen `WHERE`, `ORDER BY`, y `GROUP BY`.

- **Query/Consulta**: Es una solicitud para recuperar datos de una base de datos. En SQL, las consultas se escriben utilizando comandos como `SELECT`, `INSERT`, `UPDATE`, y `DELETE`, permitiendo a los usuarios filtrar, ordenar y manipular los datos según sea necesario.

- **Clave primaria (*primary key*)**: Es un campo o combinación de campos que identifican de manera única cada fila en una tabla de base de datos. Las claves primarias deben ser únicas y no pueden contener valores nulos. Sirven para asegurar que cada registro en la tabla sea único.

- **Clave foránea (*foreign key*)**: Es un campo o combinación de campos en una tabla que establece un vínculo con la clave primaria de otra tabla. Las claves foráneas se utilizan para mantener la integridad referencial entre las tablas, asegurando que los valores en la tabla secundaria correspondan a valores válidos en la tabla primaria.


# Buenas prácticas

- Añadir comentarios al código que ayuden a la lectura de la consulta.

- Utilizar las cláusulas en mayúscula y los nombres de tablas y columnas en minúscula.

- Nombrar las variables de forma sencilla y fácil de entender.

- Utilizar bien los espacios y la indentación.

- Usar alias para renombrar las columnas de forma descriptiva y clara.

- Evitar utilizar SELECT *, selecciona las columnas que son de tu interés y trata de hacer todo el filtrado antes de hacer la consulta.

- Utilizar indentación para que las consultas sean más claras y fácil de entender.
    
    ```sql
    -- MALA PRÁCTICA
    SELECT d.DepartmentName,e.Name, e.LastName, e.Address, e.State, e.City, e.Zip FROM
    Departments AS d JOIN Employees AS e ON d.ID = e.DepartmentID WHERE d.DepartmentName != 'HR';
    
    -- BUENA PRÁCTICA
    SELECT    d.DepartmentName
            , e.Name
            , e.LastName
            , e.Address
            , e.State
            , e.City
            , e.Zip
    FROM     Departments AS d
    JOIN     Employees AS e ON d.ID = e.DepartmentID
    WHERE    d.Name != 'HR';
    ```