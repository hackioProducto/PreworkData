---
description: >-
  Las consultas de agregación en SQL realizan operaciones matemáticas sobre un conjunto de filas para devolver un único resultado, como SUM, AVG, COUNT, MIN, MAX, etc., resumiendo y calculando datos.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>

# Consultas de Agregación

Las consultas de agregación son utilizadas para realizar operaciones matemáticas sobre un conjunto de filas y devolver un único resultado. Estas consultas se utilizan para resumir y calcular datos agregados, como sumas, promedios, conteos, valores máximos o mínimos, etc.

Algunas de las funciones de agregación más comunes en SQL son:

- **`MIN`** : Devuelve el valor mínimo en una columna. Por ejemplo, podemos usar `MIN`  para obtener el cliente más joven en una tabla de clientes.
- **`MAX`** : Devuelve el valor máximo en una columna. Por ejemplo, Podemos usar `MAX`  para obtener el producto más caro en una tabla de productos.
- **`SUM`** : Calcula la suma de los valores en una columna numérica. Podemos usar `SUM`  para obtener el total de ventas en una tabla de transacciones.
- `**COUNT**` : Cuenta el número de filas en una tabla o el número de valores no nulos en una columna. Por ejemplo, puedes usar COUNT para contar el número de clientes en una tabla de clientes.
- **`AVG`** : Calcula el promedio de los valores en una columna numérica.  Usaremos `AVG`  para obtener el promedio de calificaciones en una tabla de estudiantes.
- **`STDDEV`** : Calcula la desviación estándar de los valores en una columna numérica. Podemos usar `STDDEV`  para analizar la variabilidad de los precios en una tabla de productos.
- **`VARIANCE`** : Calcula la varianza de los valores en una columna numérica. Utilizaremos `VARIANCE`  para medir la dispersión de los ingresos en una tabla de ventas.
- **`CONCAT`** : Concatena dos o más cadenas de texto en una columna. Por ejemplo, podemos usar `CONCAT`  para combinar el nombre y apellido en una tabla de clientes.

**MIN**

La función `MIN` se utiliza para devolver el valor mínimo de una columna en una tabla. Puede ser útil cuando queremos encontrar el valor más bajo de una cierta columna, como la edad mínima de los clientes o el precio mínimo de un producto. Por ejemplo, podemos estar interesados en saber que canción es la que tiene menor duración. 

```sql
/** En esta query estamos extrayendo el valor mínimo de la columna "Milliseconds"
combinandolo con la sentencias AS para darle un alias a la columna
**/
SELECT MIN("Milliseconds") AS minimo_duración
FROM "Track";
```

![Captura de pantalla 2024-02-07 a las 16.36.45.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen14.png?raw=true)

Esta query nos podría ser interesante, pero la verdad es que nos gustaría saber que canción es la que tiene una menor duración. Usando la lógica de los aprendido hasta ahora, solo tendremos que añadir en el `SELECT` la columna de “*Name”.* 


```sql
SELECT MIN("Milliseconds"), "Name"  
FROM "Track" ;
```

![Captura de pantalla 2024-02-06 a las 13.51.20.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen15.png?raw=true)

El error "SQL Error [42803]" se produce porque estamos utilizando la función de agregación `MIN` para obtener el valor mínimo de la columna "Milliseconds", pero también estamos seleccionando la columna "Name" en la misma consulta sin utilizar una función de agregación o incluirlo en la cláusula `GROUP BY`.

Cuando utilizamos una función de agregación, todas las columnas que no están siendo agregadas deben ser incluidas en la cláusula `GROUP BY` o ser utilizadas en otra función de agregación.

**MAX**

La función `MAX`  se utiliza para obtener el valor máximo de una columna en una tabla. Puede ser útil cuando queremos encontrar el valor más alto de una cierta columna, como la edad máxima de los clientes o el precio máximo de un producto.

Igual que en el ejemplo anterior, podemos sacar que canción es la que tiene la duración más larga usando la sentencia `MAX`. 

```sql
-- En esta query estamos extrayendo el valor máximo de la columna "Milliseconds"
SELECT MAX("Milliseconds") AS maximo_duracion 
FROM "Track";
```

![Captura de pantalla 2024-02-07 a las 16.37.20.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen16.png?raw=true)

**COUNT**

La sentencia `COUNT`  se utiliza para contar el número de filas en una tabla o el número de valores no nulos en una columna específica. Puede ser útil para obtener el recuento total de registros en una tabla o para realizar recuentos específicos en columnas particulares.

Veamos algunos ejemplos de como podríamos usar esta sentencia:

- Contar el número total de registros en una tabla. Imaginamos que queremos saber el número total de facturas que hemos emitido o el número de albumes que hay en la BBDD, las queries que podríamos construir son:
    
    ```sql
    /**
    En esta query estamos contando el número de filas que tenemos en la columna de 
    InvoiceId que tienen valor en la celda. 
    **/
    SELECT COUNT("InvoiceId")  
    FROM "Invoice";
    
    /**
    En esta query estamos contando el número total de registros de la tabla "Albúm"
    En este caso, usamos el asteristo para contar todas las filas de la tabla sin 
    especificar una columna en particular. 
    **/
    SELECT COUNT(*) 
    FROM "Album";
    ```
    
- Contar el número de valores únicos en una columna. Hay en otras ocasiones que no nos interesa calcular el numero de filas que tenemos en una tabla, sino que queremos saber el numero de valores únicos que tenemos en una columna dada. Imaginemos ahora que queremos saber cuántas nacionalidades diferentes tenemos entre nuestros clientes.
    
    ```sql
    /**
    En esta query estamos calculando el número de filas que tenemos en la tabla 
    "Customer", especificamente en la columna "Country". Pero esto no nos da el 
    número de nacionalidades únicas. 
    **/ 
    SELECT COUNT("Country") 
    FROM "Customer";
    ```
    
    ![Resultado de la query donde estamos contando el número de registros que tenemos en la columna “Country” de la tabla “Customer”](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen17.png?raw=true)
    

    ```sql
    /**
    En esta query estamos calculando el número de filas que tenemos en la tabla 
    "Customer", especificamente en la columna "Country". Pero en este caso estamos 
    contando el número de valores distintos que hay en dicha columna. 
    **/ 
    SELECT COUNT(DISTINCT "Country") 
    FROM "Customer";
    ```
    
    ![Resultado de la query donde estamos contando el número de **países distintos** que tenemos  en la columna “Country” en la tabla “Customer”](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen18.png?raw=true)
    
**SUM**

La función `SUM` se utiliza para calcular la suma de los valores en una columna numérica. Esta función es útil cuando queremos obtener la suma total de ventas que hemos tenido.

En nuestra BBDD de datos tenemos la tabla *Invoice* en la cual tenemos las ventas realizadas en la plataforma. Cada una de las filas corresponde con una factura, en este contexto podríamos estar interesados en saber cual ha sido el total de ventas que hemos tenido, por lo que tendríamos que sumar el total de cada una de las facturas. Para ello, usaremos la sentencia `SUM` de la siguiente forma: 

```sql
/**
En esta query estamos calculando la suma total de ventas que tenemos en la BBDD
**/
SELECT SUM("Total") as suma_ventas 
FROM "Invoice";
```

![Captura de pantalla 2024-02-07 a las 16.38.08.png](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen19.png?raw=true)

**AVG**

La función `AVG`  se utiliza para calcular el promedio de los valores de una columna numérica en una tabla.  Podríamos estar interesados en calcular el promedio de la columna total para conocer cual es la media de ventas realizadas en la plataforma. Para eso, la query que deberíamos escribir debería ser: 

```sql
/**
En esta query estamos calculando la media del precio de todos los productos de la
plataforma. 
**/
SELECT AVG("Total")  
FROM "Invoice";
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen20.png?raw=true)


Si bien es cierto que este resultado es correcto, podría interesarnos redondear este valor a 2 decimales. Para eso tendremos que usar la función `ROUND`. Veamos como la podemos incluir en nuestra query: 

```sql
/**
En esta query estamos calculando la media del total de todas las facturas que 
tenemos en la plataforma. Además, le hemos añadido la función ROUND para redondear
el resultado a dos decimales. 
**/
SELECT ROUND(AVG("Total"), 2) 
FROM "Invoice";
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen21.png?raw=true)


**STDDEV**

La función `STDDEV`  se utiliza para calcular la desviación estándar poblacional de un conjunto de valores en una columna numérica. Recordemos que, la desviación estándar es una medida de dispersión que indica qué tan dispersos están los valores con respecto a la media.

Sigamos con el ejemplo de las precio pagado por lo usuarios en cada una de las compras de la plataforma. En este caso calcularemos la desviación estándar usando la función `STDDEV`.

```sql
/**
En esta query estamos calculando la desviación estándar para la columa "Total"
de la tabla "Invoice" y redondeando el resultado a 2 decimales. 
**/
SELECT ROUND(STDDEV("Total"), 2) 
FROM "Invoice";
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen22.png?raw=true)


Este resultado nos esta indicando que los valores de cada factura tienden a varia en un promedio de 4,75$ con respecto a la media. Esto significa que hay cierta dispersión en los valores de las facturas, y que algunas facturas pueden estar muy alejados de la media. 

**VARIANCE**

La función `VARIANCE` se utiliza para calcular la varianza poblacional de un conjunto de valores en una columna numérica. La varianza es una medida de dispersión que indica qué tan dispersos están los valores con respecto a la media. Recordemos que, la desviación estándar es la raíz cuadrada de la varianza y muestra la dispersión promedio de los valores con respecto a la media.

```sql
/**
En esta query estamos calculando la desviación estándar de la columna "Total" 
de la tabla "Invoice", redondeando el resultado a dos decimales. 
**/
SELECT ROUND(VARIANCE("Total"), 2) 
FROM "Invoice";
```

![Resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen23.png?raw=true)

Este resultado indica que la dispersión promedio de los valores de la columna “Total” de la tabla “Invoices” respecto de la media es de 22.52 (en unidades al cuadrado). Es decir, los valores de las facturas tienden a variar alrededor de 22.52 en promedio con respecto a la media de 5.65. 

**CONCAT**

La función `CONCAT` se utiliza para concatenar dos o más cadenas de texto en una sola cadena. Esto es útil cuando deseamos combinar el contenido de varias columnas o agregar texto adicional a una cadena existente.

Por ejemplo, imaginemos que quisiéramos sacar el nombre y apellido de los clientes en una sola columna, es decir, queremos combinar estas dos columnas para obtener el nombre completo. En este caso es cuando deberíamos usar el `CONCAT`. 

```sql
/** En esta query estamos concatenando las columnas de nombre y apellido en una
sola columna a la que le hemos puesto el nombre de "nombre_completo" utilizando 
la sentencia AS.
Fijaos como dentro de la función concat, el elemento por el que se van a unir 
las columnas esta indicado con comillas simples.
**/
SELECT CONCAT("FirstName", ' ', "LastName") AS nombre_completo 
FROM "Customer";
```

![7 primeros resultados](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/imagen24.png?raw=true)


### Resumen de las funciones de agregación

| Función de Agregación | Descripción | Ejemplo de Sintaxis |  
| --- | --- | --- |
| MIN | Devuelve el valor mínimo de una columna numérica | SELECT MIN(columna) FROM tabla; |  
| MAX | Devuelve el valor máximo de una columna numérica | SELECT MAX(columna) FROM tabla; |  
| SUM | Calcula la suma de una columna numérica | SELECT SUM(columna) FROM tabla; |  
| COUNT | Cuenta el número de filas en una tabla o el número de valores no nulos en una columna | SELECT COUNT(columna) FROM tabla; |  
| AVG | Calcula el promedio de una columna numérica | SELECT AVG(columna) FROM tabla; |  
| STDDEV | Calcula la desviación estándar de una columna numérica | SELECT STDDEV(columna) FROM tabla; |  
| VARIANCE | Calcula la varianza de una columna numérica | SELECT VARIANCE(columna) FROM tabla; |  
| CONCAT | Concatena dos o más cadenas de texto en una columna | SELECT CONCAT(columna1, columna2) FROM tabla; |  



# Videos

#### `MIN` y `MAX`
<div align="center">
  <a href="https://vimeo.com/921966286/ffa8abdf98?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="min max" />
  </a>
</div>

#### `COUNT` y `SUM`
<div align="center">
  <a href="https://vimeo.com/921993039/af0851e199?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="count sum" />
  </a>
</div>

#### `AVG`, `STDDEV` y `VARIANCE`
<div align="center">
  <a href="https://vimeo.com/921083775/f6cb0b66a5?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="avg, stddev y variance" />
  </a>
</div>

#### `CONCAT`
<div align="center">
  <a href="https://vimeo.com/920527251/4b89b2af72?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="concat" />
  </a>
</div>


