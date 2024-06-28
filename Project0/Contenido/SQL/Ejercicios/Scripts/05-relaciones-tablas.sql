
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.

SELECT t."Name"  AS NombreCancion, a."Title"  AS TituloAlbum
FROM "Track" t 
INNER JOIN "Album" a  
	ON t."AlbumId"  = a."AlbumId" ;


-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.

SELECT a."Name"  AS NombreArtista, a2."Title"  AS TituloAlbum
FROM "Artist" a 
INNER JOIN "Album" a2 
	ON a."ArtistId"  = a2."ArtistId" 
ORDER BY NombreArtista ;


-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 

SELECT c."FirstName" , c."LastName", SUM(i."Total") AS TotalFacturas
FROM "Customer" c 
INNER JOIN "Invoice" i  
	ON c."CustomerId"  = i."CustomerId" 
GROUP BY c."FirstName" , c."LastName" 
ORDER BY TotalFacturas DESC
LIMIT 5;


-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.

SELECT e."FirstName"  AS NombreEmpleado, e."LastName"  AS ApellidoEmpleado, 
       c."FirstName"  AS NombreCliente, c."LastName"  AS ApellidoCliente
FROM "Employee" e 
INNER JOIN "Customer" c  
	ON e."EmployeeId"  = c."SupportRepId" ;


-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.

SELECT i."InvoiceId" , t."Name"  AS NombreCancion
FROM "Invoice" i 
	INNER JOIN "InvoiceLine" il  
		ON i."InvoiceId"  = il."InvoiceId" 
	INNER JOIN "Track" t  
		ON il."TrackId"  = t."TrackId" ;


-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.

SELECT a."Name"  AS NombreArtista, g."Name"  AS NombreGenero
FROM "Artist" a 
	INNER JOIN "Album" a2  
		ON a."ArtistId"  = a2."ArtistId" 
	INNER JOIN "Track" t  
		ON a2."AlbumId"  = t."AlbumId" 
	INNER JOIN "Genre" g  
		ON t."GenreId"  = g."GenreId" ;



--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.

SELECT t."Name" AS NombreCancion, mt."Name" AS NombreTipoMedio
FROM "Track" t 
INNER JOIN "MediaType" mt  
	ON t."MediaTypeId"  = mt."MediaTypeId" ;


-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**

SELECT t."TrackId" , t."Name"  AS NombreCancion, g."Name"  AS NombreGenero
FROM "Track" t 
	RIGHT JOIN "Genre" g  
		ON t."GenreId"  = g."GenreId" 
ORDER BY NombreGenero, NombreCancion;

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.

SELECT c."CustomerId" , c."FirstName" , c."LastName" , i."InvoiceId" , i."Total" 
FROM "Invoice" i 
	RIGHT JOIN "Customer" c  
		ON i."CustomerId"  = c."CustomerId" 
ORDER BY c."LastName" , c."LastName" ;

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).

SELECT a."AlbumId" , a."Title"  AS TituloAlbum, a2."Name"  AS NombreArtista
FROM "Album" a 
	LEFT JOIN "Artist" a2  
		ON a."ArtistId"  = a2."ArtistId" 
ORDER BY TituloAlbum, NombreArtista;


-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 

SELECT g."Name"  AS NombreGenero, COUNT(t."TrackId") AS NumCanciones
FROM "Genre" g 
	INNER JOIN "Track" t  
		ON g."GenreId"  = t."GenreId" 
GROUP BY g."Name" 
ORDER BY NumCanciones DESC;



--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.

SELECT a."Title" , SUM(t."Milliseconds") AS DuracionTotal
FROM "Album" a 
	INNER JOIN "Track" t  
		ON a."AlbumId"  = t."AlbumId" 
GROUP BY a."Title" ;


-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.

SELECT c."FirstName" , c."LastName" , SUM(i."Total") AS TotalGasto
FROM "Customer" c 
	JOIN "Invoice" i  
		ON c."CustomerId"  = i."CustomerId" 
GROUP BY c."FirstName" , c."LastName" ;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.

SELECT concat(e."FirstName", ' ', e."LastName")  AS NombreEmpleado, 
       concat(c."FirstName", ' ' , c."LastName") AS NombreCliente 
FROM "Employee" e 
	LEFT JOIN "Customer" c  
		ON e."EmployeeId"  = c."SupportRepId" 
ORDER BY NombreCliente, NombreEmpleado;


