---
description: >-
    En esta lección aprenderemos a cargar una base de datos en DBeaver desde un archivo SQL que encontraréis al final de esta lección.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>



# Importar una BBDD en DBeader

A lo largo de las lecciones trabajaremos con la BBDD de Chinook. Esta base de datos representa una tienda de medios digitales, contiene información relacionada con la gestión de clientes, ventas, inventario de canciones, artistas, álbumes y más. Las tablas que nos encontraremos en esta Base de Datos son:

1. **Tabla "Employee" (Empleado):** Contiene información sobre los empleados de la tienda. Entre otras incluye las columnas "EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", y otros detalles personales y de contacto.

2. **Tabla "Customer" (Cliente):** Almacena datos sobre los clientes de la tienda. Entre otras incluye campos como "CustomerId", "FirstName", "LastName", "Company", "Address", "City", "State", "Country", "Email", "Phone", "Fax" y datos de soporte.

3. **Tabla "Invoice" (Factura):** Contiene información sobre las transacciones de ventas. Algunos de sus campos clave son "InvoiceId", "CustomerId", "InvoiceDate", "BillingAddress", "BillingCity", "BillingState", "BillingCountry", "BillingPostalCode" y el total de la factura.

4. **Tabla "InvoiceLine" (Detalles de Factura):** Almacena detalles específicos de cada línea de factura. Los campos que incluye son "InvoiceLineId", "InvoiceId", "TrackId", "UnitPrice", "Quantity" y otros relacionados con la venta de canciones.

5. **Tabla "Track" (Canción):** Contiene información sobre las canciones disponibles en la tienda. Sus campos clave son "TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice".

6. **Tabla "MediaType" (Tipo de Medio):** Describe los diferentes tipos de medios o formatos de archivos disponibles. Sus campos relevantes incluyen "MediaTypeId" y "Name".

7. **Tabla "Genre" (Género):** Almacena los géneros musicales. Sus columnas son "GenreId" y "Name".

8. **Tabla "Album" (Álbum):** Contiene información sobre los álbumes disponibles. Contiene los campos de "AlbumId", "Title", "ArtistId".

9. **Tabla "Artist" (Artista):** Almacena detalles sobre los artistas de las canciones y álbumes. Sus campos clave son "ArtistId" y "Name".

10. **Tabla "Playlist" (Lista de Reproducción):** Describe las listas de reproducción creadas en la tienda. Sus campos clave son "PlaylistId" y "Name".

11. **Tabla "PlaylistTrack" (Canción de Lista de Reproducción):** Relaciona canciones con listas de reproducción. Sus campos clave son "PlaylistId" y "TrackId".

El esquema de la BBDD para ver las relaciones de las tablas lo podéis ver a continuación: 

![Esquema de la BBDD de Chinook](https://github.com/Hack-io-Data/Imagenes/blob/main/02-Imagenes/SQL/esquema-chinook.png?raw=true)


Para poder importar la base de datos deberéis seguir paso a paso la guía que tenéis en el video a continuación: 

#### Importación de bases de datos 

<div align="center">
  <a href="https://vimeo.com/922053418/b5e398d90e?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Condicionales if" />
  </a>
</div>


La Base de Datos que usaremos para importar y trabajar a lo largo de las lecciones es la siguiente, deberéis descargarla.

{% file src="../Archivos/CreacionBBDDChinook.sql" %}
Descarga este Jupyter y ábrelo en VS Code para practicar.
{% endfile %}

# Guardar archivos nuevos de SQL.

Cuando estamos trabajando con SQL y escribimos las `queries` podemos estar interesados en guardar ese archivo para seguir modificándolo o trabajando con el, para eso podemos hacerlo siguiendo los siguientes pasos:
 - Situado en la parte superior izquierda buscamos "Archivo". 
 - Seleccionamos "Guardar todo".
 

   ![seleccion](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/guardar-sql.png?raw=true)
 

- Aparecerá una ventana emergente para que puedas guardar el archivo. 
    ![guardado](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/SQL/guardar-nombre-fichero.png?raw=true)



{% embed url="../Archivos/guardar-archivos.mov" %}

