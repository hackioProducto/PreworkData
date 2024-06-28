---
description: >-
    La sentencia `ORDER BY` ordena los resultados según un criterio, `LIMIT` restringe el nº de filas devueltas, y `OFFSET` omite filas iniciales. `GROUP BY` agrupa filas y `HAVING` filtra los grupos.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Consultas de Ordenación y Agrupación

**ORDER BY**

La sentencia `ORDER BY` se utiliza para ordenar los resultados de una consulta según un criterio específico. Permite especificar una o varias columnas por las cuales podemos ordenar los resultados, ya sea de forma ascendente (ASC) o descendente (DESC). Por defecto, se ordenará de forma ascendente.

Imaginemos ahora que queremos ordenar la tabla de los empleados en base a su posición en la empresa de la “A” a la “Z”. La query que deberíamos escribir es:

```sql
/**
En esta query estamos extrayendo el nombre, el apellido y la posición de todos 
los empleados de la empresa, ordenando el resultado por su posición en la 
empresa de la "A" a la "Z"
**/
SELECT "FirstName", "LastName", "Title"
FROM "Employee" 
ORDER BY "Title" ;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen25.png?raw=true)


Podríamos estar interesados en ordenar los resultados no solo por su posición, sino también por su apellido, en ese caso lo único que tendremos que hacer será agregar las dos columnas por las que queremos ordenar en la sentencia `ORDER BY`.

```sql
/**
En esta query estamos seleccionando las columnas de nombre, apellido y posición
y ordenamos de la "A" a la "Z" primero por la posición y luego por el apellido
**/ 
SELECT "FirstName", "LastName" , "Title"
FROM "Employee" 
ORDER BY "Title", "LastName" ;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen26.png?raw=true)

Hasta ahora hemos estado ordenando de la “A” a la “Z” (de forma ascendente), pero ¿qué pasaría si quisiéramos ordenar de la “A” a la “Z” por la posición que ocupan los empleados y de la “Z” a la “A” (forma descendente) por el apellido? En ese caso, tendríamos que indicar de que forma queremos ordenar cada una de las columnas que especifiquemos en el `ORDER BY`.

```sql
/** En esta query estamos seleccionado el nombre, apellido y posición de todos
los empleados de la compañia, ordenando los resultados de la "A" a la "Z" por 
la posición y de la "Z" a la "A" por el apellido 
**/
SELECT "FirstName", "LastName", "Title"
FROM "Employee" 
ORDER BY "Title" ASC, "LastName" DESC ;
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen27.png?raw=true)


Hasta ahora hemos visto las sentencias `WHERE` y `ORDER BY` por separado, pero nos podemos preguntar si se pueden combinar estas dos sentencias. La respuesta es que si. Imaginemos ahora que queremos basándonos en la query anterior queremos quedarnos solo con aquellos empleados que vienen de “Calgary”. Para eso lo único que tendremos que hacer es incluir el where en la query. **Este `WHERE` deberá ir encima del `ORDER BY`.**

```sql
/**
En esta query estamos extrayendo el nombre, apellido y posición de los empleados
que son de Calgary y ordenando los resultados de mayor a menor por posición y de 
menor a mayor por apellido. 
NOTA: Fijaos como no tenemos obligatoriamente que incluir en el SELECT las 
columnas que usamos en el WHERE o en ORDER BY
**/
SELECT "FirstName", "LastName", "Title"
FROM "Employee" 
WHERE "City"  = 'Calgary'
ORDER BY "Title" ASC, "LastName" desc;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen28.png?raw=true)



**LIMIT**

La cláusula `LIMIT` se utiliza para limitar el número de filas que se devuelven en el resultado de una consulta. Permite especificar el número máximo de filas que queremos devolver, lo que puede ser útil cuando solo se necesita una porción de los resultados totales.

Imaginamos que escribimos la query donde queremos sacar los títulos de los álbumes que tenemos en la BBDD, tendríamos que hacer una query sencilla, como lo que vemos a continuación:

```sql
SELECT "Title"  
FROM "Album";
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen29.png?raw=true)

Si quisiéramos acortar el resultado para ver los 3 primeros resultados podríamos incluir en nuestra query la sentencia `LIMIT` de la siguiente forma. 

```sql
/**
En esta query estamos limitando los resultados obtenidos de la query a tres 
resultados
**/
SELECT "Title"  
FROM "Album" 
LIMIT 3
```

![Resultado](Ihttps://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen30.png?raw=true)

Creemos ahora una query donde combinemos todas las sentencias que hemos aprendido, `SELECT` , `FROM` , `WHERE` , `ORDER BY` y `LIMIT`. En este caso vamos a crear una query que nos permita extraer el nombre, precio y compositor de las canciones que tengan in precio superior a 1$, ordenando los resultados en base a la duración de la canción de mayor y limitando el resultado a dos. 

```sql
/**
En esta query estamos seleccionando aquellas canciones que tienen un precio superior
a 1$, ordenando los resultados en base a su duración y limitando el output a
2 resultados. Además hemos añadido los alias para los nombres de las columnas
usando la sentencia AS para que los nombres de las columnas sean mas intuitivos. 
**/
SELECT "Name" AS "Nombre Cancion", "UnitPrice" AS "Precio","Composer" AS "Compositor"
FROM "Track"  
WHERE "UnitPrice" > 1
ORDER BY "Milliseconds" DESC 
LIMIT 2;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen31.png?raw=true)

**OFFSET** 

La cláusula `OFFSET` se utiliza junto con la cláusula `LIMIT` para especificar el número de filas que se deben omitir en el resultado de una consulta. Permite saltar un número específico de filas y comenzar a mostrar los resultados a partir de esa posición.

Volvamos sobre la query anterior, donde habíamos sacado las canciones cuyo precio era superior a 1$. Ejecutemos ahora la query, pero en este caso sin incluir el limit: 

```sql
/**
Estamos seleccionando las canciones que tienen un precio superior a 1$, ordenando
los resultados de mayor a menor en base a la duración. 
Fijaos como el primer resultado que nos devuelve la query es "Occupation /Precipice"
**/
SELECT "Name" AS "Nombre Cancion", "UnitPrice" AS "Precio","Composer" AS "Compositor"
FROM "Track"  
WHERE "UnitPrice" > 1
ORDER BY "Milliseconds" DESC;
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen32.png?raw=true)

Hagamos ahora la misma query, pero en este caso incluiremos la sentencia `OFFSET` y observemos como cambian los resultados. 

```sql
/**
Estamos seleccionando las canciones que tienen un precio superior a 1$, ordenando
los resultados de mayor a menor en base a la duración. 
En este caso hemos añadido la sentencia OFFSET igual a 2
**/
SELECT "Name" AS "Nombre Cancion", "UnitPrice" AS "Precio","Composer" AS "Compositor"
FROM "Track"  
WHERE "UnitPrice" > 1
ORDER BY "Milliseconds" DESC
OFFSET 2;
```

![Captura de pantalla 2024-02-06 a las 12.06.27.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen33.png?raw=true)

Fijaos como ahora el primer resultado ya no es "*Occupation /Precipice*" sino "*Greeting from Earth*", es decir, la que antes estaba en tercera posición. Es decir, fijaos como se han omitido los dos primeros resultados resultado de la sentencia `OFFSET`.

Es importante tener en cuenta que la cláusula `OFFSET` se puede utilizar en combinación con la cláusula `LIMIT` para obtener un conjunto específico de filas después de omitir un número determinado de filas. Por ejemplo, podríamos estar interesados en sacar las canciones que están entre las posiciones 6 y 10 (inclusive). Para eso, tendríamos que usar las sentencias `OFFSET` y `LIMIT`. 

```sql
/**
En esta query estamos seleccionando las canciones que tienen un precio superior a 1$
ordenando los resultados de mayor a menor en base a su duración y limitando el resultado
a 5 filas (LIMIT 5) y omitiendo las 5 primeras filas (OFFSET 5).
**/
SELECT "Name" AS "Nombre Cancion", "UnitPrice" AS "Precio","Composer" AS "Compositor"
FROM "Track" 
WHERE "UnitPrice" > 1
ORDER BY "Milliseconds" DESC 
LIMIT 5
OFFSET 5;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen34.png?raw=true)


**GROUP BY**

La cláusula `GROUP BY` se utiliza para agrupar filas en base a un criterio específico y realizar operaciones de agregación en cada grupo. Esta cláusula nos permite resumir y obtener información agregada de un conjunto de datos.

Cuando usamos `GROUP BY`, especificamos una o varias columnas por las cuales queremos agrupar los resultados. Cada grupo resultante contendrá todas las filas que tengan los mismos valores en las columnas especificadas.

Supongamos que queremos saber los 5 paises con más clientes que tenemos en la BBDD, tendríamos que agrupar por país y contar el número de filas que tenemos para cada uno de los países, además de ordenar los resultados de mayor a menor y limitando los resultados a 5. 

```sql
/**
En esta query estamos seleccionado el conteo del número de id de clientes 
que tenemos en la BBDD y el país. Además estamos agrupando los datos en base a el
país y limitando los resultados a 5
**/
SELECT "Country", COUNT("CustomerId") AS numero_total_clientes 
FROM "Customer"
GROUP BY "Country" 
ORDER BY numero_total_clientes DESC -- NOTA: fijaos como en este ORDER BY estamos usando el alias que le pusimos a la columna
LIMIT 5;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen35.png?raw=true)


**HAVING**

La cláusula `HAVING` se utiliza en combinación con la cláusula `GROUP BY` para filtrar los resultados de una consulta agregada. Permite aplicar condiciones a los grupos resultantes de la cláusula `GROUP BY`.

Mientras que la cláusula `WHERE` se utiliza para filtrar filas individuales antes de que se realice la agregación, la cláusula `HAVING` se utiliza para filtrar grupos después de la agregación.

Imaginemos que queremos obtener los países con más de 5 clientes en nuestra base de datos. Podemos utilizar la cláusula `HAVING` para aplicar esta condición después de agrupar los datos por país y contar el número de clientes.

```sql
/**
En esta query estamos seleccionando el país y contando el número de clientes 
para cada país.
Luego, utilizamos la cláusula HAVING para filtrar los resultados y mostrar solo aquellos países que tienen más de 3 clientes.
Por último, estamos ordenando los resultados en base al número total de clientes
de mayor a menor.
**/
SELECT "Country" as pais, COUNT("CustomerId") AS numero_total_clientes
FROM "Customer"
GROUP BY "Country"
HAVING COUNT("CustomerId") > 5
ORDER BY numero_total_clientes DESC;
```

![Resultado](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen36.png?raw=true)


Si nos fijamos ahora en el `HAVING` no hemos usado el alias que hemos creado en el `SELECT`.  Esto es debido al orden de ejecución en las queries. Podríamos pensar que el orden de ejecución es de arriba hacía abajo, pero la realidad es que no es así. A continuación veamos cual es el orden de ejecución de las sentencias que hemos visto hasta ahora: 

El orden de ejecución de las sentencias en PostgreSQL es el siguiente:

1. FROM: Se seleccionan las tablas de donde se obtendrán los datos.

2. WHERE: Se aplican las condiciones de filtrado a las filas individuales.

3. GROUP BY: Se agrupan los datos en base a las columnas especificadas.

4. HAVING: Se aplican las condiciones de filtrado a los grupos resultantes.

5. SELECT: Se seleccionan las columnas a mostrar en el resultado.

6. ORDER BY: Se ordenan los resultados según el criterio especificado.

7. LIMIT: Se limita la cantidad de filas del resultado a mostrar.

8. OFFSET: Se omiten las filas iniciales del resultado.

El alias lo hemos creado en el `SELECT`, por lo que solo existirá en aquellas sentencias que se ejecutan después.  

# Videos

#### `ORDER BY`
<div align="center">
  <a href="https://vimeo.com/920632905/0025f007b2?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="min max" />
  </a>
</div>

#### `LIMIT` y `OFFSET`
<div align="center">
  <a href="https://vimeo.com/921039770/7cc17b3028?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="count sum" />
  </a>
</div>

#### `GROUP BY` y `HAVING`
<div align="center">
  <a href="https://vimeo.com/921975749/2cc76cc6ce?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="avg, stddev y variance" />
  </a>
</div>

