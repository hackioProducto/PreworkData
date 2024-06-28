---
description: >-
    Los joins combinan filas de dos o más tablas basadas en una condición específica, relacionando datos de diferentes tablas para obtener información completa.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Relaciones entre Tablas

Los *joins* son operaciones que permiten combinar filas de dos o más tablas en base a una condición específica. Estas operaciones son útiles para relacionar datos de diferentes tablas y obtener una visión más completa de la información.

Los *joins* se utilizan cuando hay una relación entre las tablas y se necesita obtener resultados que involucren campos de ambas tablas. 

Existen varios tipos de *joins* que se pueden utilizar según las necesidades de la consulta:

- **INNER JOIN**: Devuelve las filas que tienen coincidencias en ambas tablas en función de una condición de unión.

- **LEFT JOIN**: Devuelve todas las filas de la tabla izquierda y las filas coincidentes de la tabla derecha en función de una condición de unión.

- **RIGHT JOIN**: Devuelve todas las filas de la tabla derecha y las filas coincidentes de la tabla izquierda en función de una condición de unión.

- **FULL  JOIN**: Devuelve todas las filas de ambas tablas, incluidas las filas que no tienen coincidencias en la otra tabla.

- **CROSS JOIN**: Devuelve el producto cartesiano de dos tablas, es decir, combina cada fila de la primera tabla con cada fila de la segunda tabla. El resultado final contendrá todas las combinaciones posibles de filas de ambas tablas.

- **SELF JOIN**: Es una operación que se utiliza para combinar filas de una misma tabla en base a una condición de unión. En este tipo de join, se hace referencia a la misma tabla en la cláusula FROM y se utilizan alias para distinguir entre las filas de la tabla original y las filas combinadas.

## INNER JOIN

El *INNER JOIN* es una operación que combina filas de dos tablas en base a una condición de unión específica. Esta operación devuelve solo las filas que tienen coincidencias en ambas tablas.

Por ejemplo, si tenemos una tabla de "Clientes" y una tabla de "Pedidos", y queremos obtener una lista de todos los pedidos junto con la información del cliente correspondiente, podemos utilizar un *INNER JOIN* para combinar las filas de ambas tablas en base al campo clave que las relaciona, como el ID del cliente. Si lo viéramos visualmente, lo podríamos ver de la siguiente forma, es decir, la tabla resultado solo tendrá la información de los clientes que están en las dos tablas

![Captura de pantalla 2024-02-15 a las 11.31.17.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen37.png?raw=true)

La sintaxis básica de un *INNER JOIN* es la siguiente:

```sql
SELECT columnas
FROM tabla1
INNER JOIN tabla2 ON condicion_de_union;
```

Donde "tabla1" y "tabla2" son los nombres de las tablas que se desean combinar, y "condicion_de_union" es la condición que especifica cómo se deben combinar las filas, es decir, la columna que tienen en común las dos tablas que queremos unir.

Llegados a este punto, saber las relaciones que existen entre tablas es esencial para poder establecer las relaciones entre las tablas. Para eso tendremos observar en detenimiento el esquema de la BBDD como vemos a continuación:

![Captura de pantalla 2024-02-15 a las 11.38.46.png](Imagenes/Captura_de_pantalla_2024-02-15_a_las_11.38.46.png)

Para sacar el esquema de la BBDD deberéis seguir los pasos del siguiente video: 

[Creación Esquemas DBeaver.mov](Imagenes/Creacion_Esquemas_DBeaver.mov)

Pongamos ahora un ejemplo con la BBDD con la que estamos trabajando. Supongamos que queremos saber que empleados han atendido a cada uno de los clientes. Para eso tendremos que unir los datos de las tablas de `Customer`  y `Employee`. Lo primero que tenemos que saber que columna es la que comparten las dos tablas.  Para eso, usando el diagrama podemos hacer clic sobre la linea que une las dos tablas y se subrayaran las dos columnas que comparten las dos tablas.  

![Captura de pantalla 2024-02-15 a las 12.14.55.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen38.png?raw=true)

Una vez que sabemos cual es la columna que tienen en común las dos tablas, es hora de escribir la query: 

```sql
/**
En esta query estamos seleccionando todas las columnas de las dos tablas seleccionadas. 
Además, estamos uniendo las tablas de "Employee" y "Customer" por las columnas
"EmployeeId" y "SupportRepId" respectivamente. 
Por último, hemos usado la sentencia AS para poner alias a las tablas. 
**/
SELECT * 
FROM "Customer" AS c 
INNER JOIN "Employee" AS e 
ON c."SupportRepId" = e."EmployeeId" -- Especificamos por donde se deben unir las tablas, usando los alias que hemos creado
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen39.png?raw=true)

Resultados de la query donde estamos juntando las tablas de “Customer” y “Employee”, esta query nos devuelve todas las columnas de las dos tablas. 

Esta query nos devuelve todas las columnas de las dos tablas, pero podríamos simplificar el resultado mostrando únicamente el nombre y apellidos de los clientes y de los empleados. Para esto solo tendríamos que incluirlo en el `SELECT`.

Recordemos que, en ambas tablas, el nombre de las columnas del nombre y el apellido de los empleados y los clientes se llaman igual. Vemos que pasa si seleccionamos algunas de las columnas de nombre y apellido:

```sql
/**
En esta query estamos seleccionando el apellido ("LastName") y nombre ("FirstName")
de la unión de dos tablas usando un INNER JOIN
**/
SELECT "LastName", "FirstName"  
FROM "Customer" AS c 
INNER JOIN "Employee" AS e 
ON c."SupportRepId" = e."EmployeeId";
```

![Captura de pantalla 2024-02-15 a las 12.37.42.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen40.png?raw=true)

Esta query nos devuelve un error, ya que tenemos dos columna que se llaman “LastName” y postgresql “no sabe” de cual de las dos tablas debe extraer la información. Es por esto, que los alias son importantes cuando usamos los `JOIN`. En este caso, tendremos que usar los alias antes de los nombres de las columnas en el `SELECT`para que postgresql “sepa” de donde tiene que extraer la información. 

```sql
/**
Estamos obteniendo los nombres de los empleados y los nombres de los clientes que
están relacionados a través de un *INNER JOIN* entre las tablas "Customer" y 
"Employee". Estamos utilizando la función CONCAT para concatenar el apellido y
el nombre de cada empleado y cliente, separados por un espacio.
Los resultados se mostrarán con los alias "nombre_empleado" y "nombre_cliente".
**/
SELECT CONCAT(e."LastName", ' ' ,e."LastName") AS nombre_empleado, CONCAT(c."FirstName", ' ', c."LastName") AS nombre_cliente  
FROM "Customer" AS c 
INNER JOIN "Employee" AS e 
ON c."SupportRepId" = e."EmployeeId";
```

![6 primeros resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen41.png?raw=true)


Ahora nos puede surgir la duda de en que orden se ejecutan las sentencias join, a continuación modificamos el orden de ejecución añadiendo la sentencia `JOIN`: 

1. FROM: Se seleccionan las tablas de donde se obtendrán los datos.

2. JOIN: Se unen las tablas según la condición de unión especificada.

3. WHERE: Se aplican las condiciones de filtrado a las filas resultantes de la unión.

4. GROUP BY: Se agrupan los datos en base a las columnas especificadas.

5. HAVING: Se aplican las condiciones de filtrado a los grupos resultantes.

6. SELECT: Se seleccionan las columnas a mostrar en el resultado.

7. ORDER BY: Se ordenan los resultados según el criterio especificado.

8. LIMIT: Se limita la cantidad de filas del resultado a mostrar.

9. OFFSET: Se omiten las filas iniciales del resultado.

¿Y si quisiéramos saber el empleado que mas clientes atiende? Necesitaríamos contar el números de clientes que tiene cada empleado, por lo tendríamos que usar un `GROUP BY` y una función de agregación. La query quedaría de la siguiente forma: 

```sql
/**
Esta consulta combina las tablas "Customer" y "Employee" utilizando un INNER JOIN
para obtener información sobre los empleados y la cantidad de clientes que
atienden. La query utiliza la función CONCAT para concatenar el apellido y 
el nombre de los empleados y clientes. Luego, se utiliza la función COUNT para
contar el número de clientes para cada empleado. La consulta agrupa los resultados
por el nombre completo del empleado. Por lo tanto, el resultado de la consulta
mostrará el nombre completo del empleado y el número de clientes que atiende.
**/
SELECT concat(e."LastName", ' ' ,e."LastName") AS nombre_empleado, COUNT(CONCAT(c."FirstName", ' ', c."LastName")) AS numero_clientes
FROM "Customer" AS c 
INNER JOIN "Employee" AS e 
ON c."SupportRepId" = e."EmployeeId"
GROUP BY CONCAT(e."LastName", ' ' ,e."LastName") ;
```

![Resultados ](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen42.png?raw=true)


## LEFT JOIN

El *LEFT JOIN*  es una operación que combina filas de dos tablas en base a una condición de unión, devolviendo todas las filas de la tabla izquierda y las filas coincidentes de la tabla derecha. Si no hay coincidencias en la tabla derecha, se devolverán valores nulos para las columnas correspondientes.

Imaginemos que tenemos dos tablas, "Customers" y "Orders", y queremos obtener una lista de todos los clientes junto con los pedidos correspondientes, incluso si algunos clientes no tienen pedidos. Podemos utilizar un *LEFT JOIN* para combinar las filas de ambas tablas en base al campo clave que las relaciona, como el ID del cliente.

![Captura de pantalla 2024-02-15 a las 13.30.22.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen43.png?raw=true)

La sintaxis básica de un *LEFT JOIN* en PostgreSQL es la siguiente:

```sql
SELECT columnas
FROM tabla_izquierda
LEFT JOIN tabla_derecha ON condicion_de_union;

```

Donde "tabla_izquierda" y "tabla_derecha" son los nombres de las tablas que se desean combinar, y "condicion_de_union" es la condición que especifica cómo se deben combinar las filas.

```sql
/**
Esta consulta combina las tablas "Employee" y "Customer" utilizando un 
*LEFT JOIN* para obtener información sobre los empleados y el número de clientes 
que atienden. La consulta utiliza la función CONCAT para concatenar el apellido 
y el nombre de los empleados. Luego, utiliza la función COUNT para contar el 
número de clientes distintos para cada empleado. La consulta agrupa los 
resultados por el nombre completo del empleado y los ordena en base al número de 
clientes de mayor a menor.
**/
SELECT concat(e."LastName", ' ' ,e."LastName") AS nombre_empleado, COUNT( DISTINCT c."CustomerId") AS numero_clientes
FROM "Employee" e
LEFT JOIN  "Customer" c 
ON c."SupportRepId" = e."EmployeeId"
GROUP BY CONCAT(e."LastName", ' ' ,e."LastName") 
ORDER BY numero_clientes DESC;
```

![Captura de pantalla 2024-02-15 a las 17.10.15.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen44.png?raw=true)

A diferencia con los resultados del `INNER JOIN` en esta query nos salen todos los empleados que tenemos en la BBDD. Esto es así porque estamos usando un `LEFT JOIN`siendo la tabla de la izquierda la tabla de los empleados, por lo que en la tabla resultados aparecen todos los empleados y nos saldrán 0 en el `COUNT` en aquellos empleados que no han atendido a nadie. 

## RIGHT JOIN

El *RIGHT JOIN*  es una operación que combina filas de dos tablas en base a una condición de unión, devolviendo todas las filas de la tabla derecha y las filas coincidentes de la tabla izquierda. Si no hay coincidencias en la tabla izquierda, se devolverán valores nulos para las columnas correspondientes.

El uso del *RIGHT JOIN* es similar al *LEFT JOIN*, pero invierte el orden de las tablas. Mientras que el *LEFT JOIN* devuelve todas las filas de la tabla izquierda y las coincidentes de la tabla derecha, el *RIGHT JOIN* devuelve todas las filas de la tabla derecha y las coincidentes de la tabla izquierda.

![Captura de pantalla 2024-02-15 a las 17.29.42.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen45.png?raw=true)

La sintaxis básica del *RIGHT JOIN* en PostgreSQL es la siguiente:

```sql
SELECT columnas
FROM tabla_derecha
RIGHT JOIN tabla_izquierda ON condicion_de_union;
```

Donde "tabla_derecha" y "tabla_izquierda" son los nombres de las tablas que se desean combinar, y "condicion_de_union" es la condición que especifica cómo se deben combinar las filas.

```sql
/**
Esta consulta cuenta el número de empleados y muestra el nombre completo de los
clientes que están relacionados a través de un *RIGHT JOIN* entre las tablas 
"Employee" y "Customer". La condición de unión es que el ID del empleado en la 
tabla "Employee" coincida con el campo "SupportRepId" en la tabla "Customer". 
La consulta agrupa los resultados por el nombre completo del cliente. 
Por lo tanto, el resultado de la consulta mostrará el número de empleados 
y el nombre completo de cada cliente relacionado con un empleado.
**/
SELECT COUNT(e."EmployeeId") as numero_empleados, CONCAT( c."FirstName", ' ', c."LastName") AS nombre_cliente
FROM  "Employee" e 
RIGHT JOIN "Customer" c
ON c."SupportRepId" = e."EmployeeId"
GROUP BY concat( c."FirstName", ' ', c."LastName");
```

![8 primeros resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen46.png?raw=true)


En este ejemplo de query, os animamos a que cambiéis el `RIGHT JOIN` por `LEFT JOIN` y veáis las diferencias en los resultados. 

## CROSS JOIN

El *CROSS JOIN* es una operación que combina todas las filas de una tabla con todas las filas de otra tabla, generando el producto cartesiano de ambas tablas. En otras palabras, combina cada fila de la primera tabla con cada fila de la segunda tabla, sin tener en cuenta ninguna condición de unión.

Este tipo de join es útil cuando se desea obtener todas las combinaciones posibles de filas entre dos tablas. Sin embargo, hay que tener en cuenta que el número de filas resultantes puede ser muy grande si las tablas tienen muchas filas.

![Captura de pantalla 2024-02-16 a las 11.06.29.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen47.png?raw=true)

La sintaxis básica del *CROSS JOIN* en PostgreSQL es la siguiente:

```sql
SELECT columnas
FROM tabla1
CROSS JOIN tabla2;

```

Donde "tabla1" y "tabla2" son los nombres de las tablas que se desean combinar.

```sql
/**
La consulta selecciona las columnas "AlbumId", "Title" (renombrada como 
nombre_album), "Name" (renombrada como nombre_artista) y a2."ArtistId" de las 
tablas "Album" (alias a) y "Artist" (alias a2). Luego, realiza un *CROSS JOIN* 
entre las dos tablas, combinando cada fila de la tabla "Album" con cada fila de
la tabla "Artist". Finalmente, ordena los resultados por "AlbumId".
**/
SELECT "AlbumId", "Title" AS nombre_album, "Name" AS nombre_artista, a2."ArtistId"
FROM "Album" AS a 
CROSS JOIN "Artist" AS a2
ORDER BY "AlbumId" ;
```

![8 primeros resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen48.png?raw=true)


**FULL JOIN**

El *FULL JOIN* es una operación que combina todas las filas de ambas tablas, incluyendo las filas que no tienen coincidencias en la otra tabla. En otras palabras, devuelve todas las filas de la tabla izquierda y todas las filas de la tabla derecha, y si no hay coincidencias, se rellenan los valores nulos en las columnas correspondientes.

El *FULL JOIN* es útil cuando se desea obtener todas las filas de ambas tablas, incluso aquellas que no tienen una coincidencia en la otra tabla. Esto puede ser útil para realizar análisis de datos o identificar registros faltantes.

![Captura de pantalla 2024-02-16 a las 11.25.42.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen49.png?raw=true)

La sintaxis básica del *FULL JOIN* en PostgreSQL es la siguiente:

```sql
SELECT columnas
FROM tabla_izquierda
FULL JOIN tabla_derecha ON condicion_de_union;
```

Donde "tabla_izquierda" y "tabla_derecha" son los nombres de las tablas que se desean combinar, y "condicion_de_union" es la condición que especifica cómo se deben combinar las filas.

Usando la BBDD que tenemos de referencia, supongamos que queremos obtener la lista de todos los clientes junto con las facturas correspondientes, incluso si algunos clientes no tienen facturas o si algunas facturas no tienen clientes asociados. 

```sql
/**
La consulta selecciona las columnas "InvoiceId", "InvoiceDate", "Total", "FirstName" y "LastName" de ambas tablas. El resultado mostrará todas las facturas junto con los nombres de los clientes correspondientes. Si una factura no tiene un cliente asociado, se mostrarán valores nulos para las columnas de información del cliente. Del mismo modo, si un cliente no tiene ninguna factura, se mostrarán valores nulos para las columnas de información de la factura.
**/
SELECT "InvoiceId" , "InvoiceDate", "Total", "FirstName", "LastName" 
FROM "Invoice" AS i 
FULL JOIN "Customer" AS c 
ON c."CustomerId" = i."CustomerId";
```

![7 primeros resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen50.png?raw=true)


## SELF JOIN

Un *SELF JOIN* es una operación en la cual una tabla se combina consigo misma utilizando una condición de unión. Esto permite realizar consultas que involucran relaciones entre filas dentro de la misma tabla.

El *SELF JOIN* es útil cuando se necesita relacionar filas dentro de una tabla para realizar consultas más complejas. Por ejemplo, se puede utilizar para encontrar coincidencias o relaciones entre registros que comparten algún atributo en común.

En el ejemplo de la BBDD que tenemos, nos podría interesar quien es el jefe de cada uno de los empleados que tenemos. Si nos fijamos en la tabla de `Employees`  tenemos la *primary key* `employeeId`, pero si inspeccionamos mas la información de la tabla vemos que tenemos otra columna que se llama `ReportsTo`.  Si miramos bien esta columna, nos fijaremos que lo que tenemos son los “id” de las personas a las que reportan, es decir, sus jefes. 

![Captura de pantalla 2024-02-16 a las 11.47.13.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen51.png?raw=true)

La imagen anterior lo que estamos viendo es que Nancy Edwards reporta a la persona que tiene el id 1 (Andrew Adams) o que Jane Peacock reporta a la persona con el id 2 (Nancy Edwards). Esto esta bien, pero nos podría interesar verlo de una forma más amigable, y no tener el jefe con el id, sino con el nombre también. Para eso necesitaremos un `SELF JOIN`. 

```sql
/**
La consulta selecciona el nombre completo del jefe y el nombre completo del empleado de la tabla "Employee". Utiliza un JOIN para combinar las filas de la tabla "Employee" consigo misma, utilizando la columna "ReportsTo" para relacionar a cada empleado con su respectivo jefe. Los resultados mostrarán el nombre del jefe y el nombre del empleado que tiene asignado ese jefe. Por último, ordenamos los resultados por el nombre del jefe.
**/
SELECT CONCAT(jefes."FirstName", ' ', jefes."LastName" ) as nombre_jefe, CONCAT(empleados."FirstName", ' ', empleados."LastName" ) as nombre_empleado
FROM "Employee" AS empleados
JOIN "Employee" AS jefes
ON empleados."ReportsTo" = jefes."EmployeeId" 
ORDER BY nombre_jefe ;
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen52.png?raw=true)


# Videos

#### `INNER JOIN`
<div align="center">
  <a href="https://vimeo.com/925894033/8c8d46a9c6?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="inner join" />
  </a>
</div>

#### `LEFT JOIN`
<div align="center">
  <a href="https://vimeo.com/926200155/6b172309f8?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="left join" />
  </a>
</div>

#### `RIGHT JOIN`
<div align="center">
  <a href="https://vimeo.com/926289892/3dcb94b704?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="right join" />
  </a>
</div>

#### `CROSS JOIN`
<div align="center">
  <a href="https://vimeo.com/926825636/cf84568adc?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="cross join" />
  </a>
</div>

#### `FULL JOIN`
<div align="center">
  <a href="https://vimeo.com/926287344/67e8c37ecb?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="full join" />
  </a>
</div>

