---
description: >-
  Aprenderemos consultas básicas en SQL para recuperar y manipular datos: SELECT para columnas, FROM para tablas, WHERE para filtros, y AS para renombrar.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Consultas Básicas

Las consultas básicas en SQL son operaciones que nos permiten recuperar información de una base de datos. Estas consultas se utilizan para realizar tareas como seleccionar datos de una tabla, filtrar registros según ciertos criterios, ordenar los resultados y realizar cálculos simples.

Las consultas básicas de SQL que veremos son:

- `SELECT`: Se utiliza para seleccionar columnas específicas de una o varias tablas.

- `FROM`: Indica la tabla o tablas de donde se seleccionarán los datos.

- `WHERE`: Permite filtrar los registros según ciertos criterios.

- `AS`: Se utiliza para renombrar columnas o tablas en los resultados de la consulta.

## `SELECT` y `FROM`

La cláusula `SELECT` se utiliza para seleccionar columnas específicas de una o varias tablas. Permite recuperar y visualizar los datos que cumplen ciertos criterios en una consulta.

Por ejemplo, si tenemos una tabla llamada "Clientes" con columnas como "Nombre", "Apellido" y "Edad", podemos usar el comando `SELECT`  para seleccionar solo los nombres y apellidos de los clientes:

La cláusula `FROM` en SQL se utiliza para indicar la tabla o tablas de las cuales se seleccionarán los datos en una consulta. 

En una consulta básica, la cláusula `FROM` se utiliza junto con la cláusula `SELECT` para seleccionar columnas específicas de una o varias tablas. Por ejemplo, si tenemos una tabla llamada "Clientes" y queremos seleccionar solo los nombres y apellidos de los clientes, usaríamos la cláusula `FROM` para indicar la tabla "Clientes" en la consulta:

```sql
/**
Esta query nos devolverá una tabla con los nombres 
y apellidos de todos los clientes en la tabla "Clientes"
**/

SELECT  "Nombre",
        "Apellido"
FROM "Clientes";
```

Pongámoslo en práctica en nuestra base de datos Chinook, en este ejemplo, seleccionaremos solo los títulos de los álbumes que tenemos en la BBDD. Para eso tendremos que usar la tabla de **Album**. La *query* que deberemos escribir es:

```sql
-- Esta query nos devolverá la columna "Title" de la tabla "Album" 
SELECT "Title" 
FROM "Album";
```

El resultado obtenido de esta *query* es:

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen1.png?raw=true)


Poniendo otro ejemplo, si quisiéramos saber el nombre, apellido y la ciudad de los clientes que tenemos en la BBDD solo tendríamos que incluir en el `SELECT` el nombre de todas las columnas que queremos separadas por comas. La *query* quedaría de la siguiente forma: 

```sql
/**
En esta query estamos seleccionando las columnas "FirstName", "LastName" 
y "City" de la tabla "Customer"
**/

SELECT  "FirstName" , 
        "LastName" , 
        "City"  
FROM "Customer";
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen2.png?raw=true)

En ocasiones, podemos estar interesados en seleccionar todas las columnas de una tabla, para eso tendremos que usar un `*` en el `SELECT` de la siguiente forma:

```sql
-- En esta query estamos seleccionando todas las columnas de la tabla "Customer"
SELECT * 
FROM "InvoiceLine";
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen3.png?raw=true)



## `WHERE`

La cláusula `WHERE`  se utiliza para filtrar los registros de una tabla según ciertos criterios. Permite especificar condiciones que deben cumplirse para que se seleccionen los registros en una consulta.

La cláusula `WHERE`  se puede combinar con diferentes operadores lógicos, como `=` , `<>` , `<` , `>` , `<=` , `>=`,  entre otros, para construir condiciones más complejas en las consultas.

Por ejemplo, si queremos seleccionar solo los clientes con un apellido específico de una tabla "Clientes", podemos usar la cláusula `WHERE` de la siguiente manera:

```sql
SELECT * FROM Clientes 
WHERE Apellido = 'Smith';
```

Esta *query* nos devolverá todos los registros de la tabla "Clientes" donde el apellido sea igual a "Smith".
**Importante** si queremos usar un valor de tipo *string* dentro de la cláusula `WHERE` en DBeaver, debemos poner el valor entre comillas simples **''**.

Empecemos buscando en la BBDD aquellos clientes cuyo nombre es 'Frank', solo querremos extraer el nombre, apellido, ciudad y estado. Para eso deberemos escribir la siguiente *query*:

```sql
/** 
En esta query estamos extrayendo el nombre, apellido, ciudad y estado de la 
tabla "Customer" filtrando solo aquellos clientes llamadados "Frank".
NOTA: Fijaos como "Frank" va entre comillas simples, si no lo hicieremos así 
la query nos dará error. 
**/
SELECT "FirstName", 
       "LastName", 
       "City", 
       "State"  
FROM "Customer" 
WHERE "FirstName" = 'Frank';
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen4.png?raw=true)

Si quisiéramos por el contrario seleccionar aquellos clientes que no se llaman “Frank”, tendríamos que usar el operador `<>`.  La *query* sería: 

```sql
/** 
En esta query estamos extrayendo el nombre, apellido, ciudad y estado de la 
tabla "Customer" filtrando solo aquellos clientes que no se llaman "Frank".
**/
SELECT "FirstName" , "LastName" , "City" , "State"  
FROM "Customer"  
WHERE "FirstName" <> 'Frank';
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen5.png?raw=true)

Imaginemos ahora que queremos saber el nombre, precio y milisegundos de las canciones que tienen un precio mayor que 1$. En ese caso nuestra *query* debería ser: 

```sql
/** 
En esta query estamos extrayendo el nombre, precio y milisegundosde la tabla 
"Track" seleccionando solo aquellas canciones cuyo precio sea mayor que 1$
**/
SELECT "Name", "UnitPrice", "Milliseconds"  
FROM "Track" 
WHERE "UnitPrice"  > 1;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen6.png?raw=true)

En resumen, la sentencia `WHERE` se puede usar con operadores de comparación, los más importantes son: 

| Operador | Descripción | Ejemplo de Query |
| --- | --- | --- |
| = | Igual que | SELECT * FROM Customers WHERE Country = 'Spain';  |
| <> | Distinto que | SELECT * FROM Customers WHERE City <> 'Madrid';  |
| < | Menor que | SELECT * FROM Employees WHERE Age < 30;  |
| > | Mayor que | SELECT * FROM Employees WHERE Salary > 50000;  |
| <= | Menor o igual que | SELECT * FROM Orders WHERE TotalAmount <= 1000;  |
| >= | Mayor o igual que | SELECT * FROM Orders WHERE TotalAmount >= 500;  |

La cláusula `WHERE` además se puede combinar con otras cláusulas, como `IN`, `NOT IN`  o `BETWEEN`.

La cláusula `IN` se utiliza en la cláusula `WHERE` para filtrar registros en base a una lista de valores. Permite seleccionar registros cuyo valor en una columna coincida con alguno de los valores especificados en la lista. Por el contrario, la cláusula `NOT IN` se utiliza para seleccionar registros cuyo valor en una columna no coincida con ninguno de los valores especificados en la lista.

Por ejemplo, si quisiéramos seleccionar el nombre y apellido de los clientes  cuyo país sea Brasil o Chile, podemos usar la cláusula `IN` de la siguiente manera:

```sql
/**
En esta query estamos seleccionando aquellos clientes que son de Brasil 
o Chile
**/
SELECT  "FirstName", 
        "LastName"  
FROM "Customer" 
WHERE "Country"  IN ('Brazil', 'Chile');
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen7.png?raw=true)


Por otro lado, si quisieramos seleccionar clientes cuyo país no sea Brasil o Chile, podemos usar la cláusula `NOT IN` de la siguiente manera:

```sql
/**
En esta query estamos seleccionando aquellos clientes que no son de Brasil 
o Chile
**/
SELECT  "FirstName" , "LastName"  
FROM "Customer"  
WHERE "Country"  NOT IN ('Brazil', 'Chile');
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen8.png?raw=true)


La sentencia `BETWEEN` se utiliza en la cláusula `WHERE` para filtrar registros en base a un rango de valores. Permite seleccionar registros cuyo valor en una columna esté dentro del rango especificado. Es importante tener en cuenta que la sentencia `BETWEEN` incluye el valor inicial pero no el valor final del rango.

Por ejemplo, si queremos seleccionar las canciones cuyo precio está entre 1$ y 2$, tendríamos que construir la siguiente *query* :

```sql
SELECT "Name", 
       "UnitPrice"  
FROM "Track" 
WHERE "UnitPrice" BETWEEN 1 AND 2;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen9.png?raw=true)


También podemos usar el `BETWEEN` con valores que son de tipo texto. Por ejemplo, podríamos seleccionar todas las canciones que empiezan por “A” o por “B” de la siguiente manera: 

```sql
/**
En esta query estamos seleccionando el nombre y precio único de la tabla "Track" 
seleccionando unicamente aquellas películas que empiezan por "A" y "B". 
NOTA: Recordemos que el BETWEEN incluye el inicio del rango, pero no el valor 
final
**/
SELECT "Name", "UnitPrice"  
FROM "Track" 
WHERE "Name" BETWEEN 'A 'AND 'C';
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen10.png?raw=true)


| Operador | Descripción | Ejemplo de Código |
| --- | --- | --- |
| IN | Coincide con uno de los valores especificados | SELECT * FROM Customers WHERE Country IN ('Brazil', 'Chile'); |
| NOT IN | No coincide con ninguno de los valores especificados | SELECT * FROM Customers WHERE Country NOT IN ('Brazil', 'Chile'); |
| BETWEEN | Está dentro de un rango de valores | SELECT * FROM Track WHERE UnitPrice BETWEEN 1 AND 2; |

Hasta ahora hemos estado viendo filtrado de la información, pero usando únicamente una condición. Para poder incluir varias condiciones en un `WHERE` tenderemos que hacer uso de las sentencias `AND` y `OR`.  Veámoslas en detalle: 

- La sentencia `AND` se utiliza en una cláusula `WHERE` para combinar múltiples condiciones y asegurarse de que todas las condiciones se cumplan. Si todas las condiciones separadas por `AND` son verdaderas, el registro se incluirá en el resultado. Por ejemplo, queremos saber si hay algún empleado cuya posición sea “*Sales Support Agent*” y que viva en “*Lethbridge*”.
    
    ```sql
    /**
    En esta query estamos buscando aquellos empleados cuya posición sea "Sales 
    Support Agent" y que vivan en "Lethbridge"
    **/ 
    SELECT "Title", "City" , "LastName" , "FirstName"  
    FROM "Employee" 
    WHERE "Title"  = 'Sales Support Agent' AND "City" = 'Lethbridge' ;
    ```
    
    ![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen11.png?raw=true)
    

    En esta *query* no obtenemos ningún resultado, esto es así porque no tenemos ningún empleado que tenga la posición de “*Sales Support Agent*” y que viva en “*Lethbridge*”. Es decir, se tienen que cumplir las dos condiciones. 
    
- La sentencia `OR` se utiliza en una cláusula `WHERE` para combinar múltiples condiciones y asegurarse de que al menos una de las condiciones se cumpla. Si alguna de las condiciones separadas por `OR` es verdadera, el registro se incluirá en el resultado. Vamos a hacer una pequeña modificación a la *query* anterior, y en vez de poner `AND` vamos a poner `OR` y vamos a ver que es lo que pasa.
    
    ```sql
    /**
    En esta query estamos buscando aquellos empleados cuya posición sea "Sales 
    Support Agent" o que vivan en "Lethbridge"
    **/ 
    SELECT "Title", "City" , "LastName" , "FirstName"  
    FROM "Employee" 
    WHERE "Title"  = 'Sales Support Agent' OR "City" = 'Lethbridge' ;
    ```
    
    ![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen12.png?raw=true)

    
    En este resultados si obtenemos resultados ya que, al contrario que cuando usábamos el `AND`, en este caso no se tienen que cumplir todas las condiciones. Con que se cumpla una de ellas, esa fila será seleccionada. Como consecuencia, esta *query* nos esta devolviendo todos aquellos empleados que están en la posición de “Sales Support Agent” o que son de “Lethbridge”. 
    

## `AS`

La sentencia `AS` se utiliza para asignar un alias (nombre alternativo) a una columna o tabla en los resultados de una consulta. Al utilizar `AS` seguido de un nombre, podemos renombrar una columna o tabla para que el resultado de la consulta sea más descriptivo y legible.

Por ejemplo, si queremos mostrar el nombre y apellido de los clientes de la tabla "Customer" con un alias más claro, podemos usar `AS` de la siguiente manera:

```sql
/**
En esta query estamos seleccionando el nombre y apellido de todos los clientes que tenemos en la tabla de "Customer", en este caso, usando la sentencia AS, los nombres de las columnas pasan a llamarse en el resultado de query "Nombre" y "Apellido". 
NOTA: el nombre de las columnas en la tabla no cambia, estos alias solo cambian el nombre en el resultado que la query. 
**/
SELECT "FirstName" AS "Nombre", "LastName" AS "Apellido"
FROM "Customer";
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen13.png?raw=true)



# Videos

#### `SELECT` y `FROM`
<div align="center">
  <a href="https://vimeo.com/921992737/3b7da267d9?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Select y from" />
  </a>
</div>

#### `WHERE` parte I
<div align="center">
  <a href="https://vimeo.com/922426516/1d07d8f591?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="where parte I" />
  </a>
</div>

#### `WHERE` parte II
<div align="center">
  <a href="https://vimeo.com/922426531/0408156e19?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="where parte II" />
  </a>
</div>

#### `AS`
<div align="center">
  <a href="https://vimeo.com/921987202/60a6e229dc?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="as" />
  </a>
</div>



