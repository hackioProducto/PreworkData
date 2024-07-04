---
description: >-
   Las tablas y tablas dinámicas en Excel facilitan la organización, análisis interactivo y resumen de datos con funciones avanzadas y personalizables.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>
    
   
# Guía Básica para la Creación de Tablas en Excel

## Seleccionar el Rango de Datos:
- Abre tu archivo de Excel.
- Limpia y realiza todas las transformaciones necesarias de los datos para normalizarlos.
- Selecciona el rango de celdas que contiene los datos que quieres convertir en una tabla. Asegúrate de incluir las cabeceras de las columnas.

## Crear la Tabla:
- Ve a la pestaña "Insertar" en la cinta de opciones.
- Haz clic en el botón "Tabla". Se abrirá una ventana emergente.
- Asegúrate de que el rango de celdas seleccionado es correcto y de que la opción "La tabla tiene encabezados" esté marcada si tus datos tienen encabezados. Luego, haz clic en "Aceptar".

## Personalizar la Tabla:

- Una vez creada la tabla, verás que tiene un formato específico y que aparecen nuevas opciones en la pestaña "Diseño de tabla" (o "Tabla" en algunas versiones).

# Propiedades de las Tablas en Excel

- **Encabezados de Tabla**: Los encabezados de columna se convierten en filtros automáticos, lo que facilita la ordenación y filtrado de datos.

- **Estilos de Tabla**: En la pestaña "Diseño de tabla", puedes seleccionar diferentes estilos predefinidos para tu tabla. Esto incluye combinaciones de colores, líneas de separación y estilos de fuentes que mejoran la visualización de los datos.

- **Filas de Total**: Puedes agregar una fila de totales a tu tabla. Para hacerlo, marca la casilla "Fila de totales" en la pestaña "Diseño de tabla". Esta fila puede mostrar sumas, promedios, conteos y otros cálculos automáticos.

- **Agregar y Eliminar Filas o Columnas**: Las tablas en Excel se expanden automáticamente cuando agregas datos en filas o columnas adyacentes. Puedes insertar nuevas filas y columnas sin necesidad de ajustar el rango de la tabla manualmente.

- **Nombres de Tabla**: Cada tabla puede tener un nombre único. Esto es útil cuando trabajas con varias tablas y necesitas referenciarlas en fórmulas o VBA. Para cambiar el nombre, ve a la pestaña "Diseño de tabla" y modifica el campo "Nombre de tabla".

- **Fórmulas Estructuradas**: Las tablas permiten usar fórmulas estructuradas, lo que facilita la referencia a columnas y filas específicas dentro de la tabla. Por ejemplo, en lugar de usar referencias de celdas como A2:A10, puedes usar `Nombre_de_Tabla[@[Nombre_columna]]`.

- **Segmentación de Datos**: Puedes usar segmentaciones para filtrar datos de manera más visual e interactiva. Esto es especialmente útil cuando trabajas con tablas grandes y necesitas analizar subgrupos específicos de datos.




# Guía Básica para la Creación de Tablas Dinámicas en Excel

## Preparación de los Datos
- Organiza los Datos: Asegúrate de que tus datos estén organizados en una tabla o rango, con encabezados en la primera fila de cada columna.

## Crear una Tabla Dinámica

- **Seleccionar los Datos**:Selecciona el rango de datos que deseas analizar, incluyendo los encabezados.

- **Insertar la Tabla Dinámica**:
   - Ve a la pestaña **"Insertar"** en la cinta de opciones.
   - Haz clic en **"Tabla dinámica"**.
   - En el cuadro de diálogo que aparece, selecciona dónde deseas colocar la tabla dinámica: en una nueva hoja de cálculo o en una hoja existente.

- **Configurar la Tabla Dinámica**:
   - Se abrirá el panel de **"Campos de Tabla Dinámica"** a la derecha de la pantalla. Aquí puedes arrastrar los campos (encabezados de columnas) a diferentes áreas: Filtros, Columnas, Filas y Valores.

## Personalización y Análisis

- **Agregar Campos a la Tabla Dinámica**:
   - **Filas**: Arrastra los campos que quieres usar como categorías (por ejemplo, "Producto").
   - **Columnas**: Arrastra los campos que quieres usar como subcategorías (por ejemplo, "Mes").
   - **Valores**: Arrastra los campos que contienen los datos numéricos que deseas sumarizar (por ejemplo, "Facturación").
   - **Filtros**: Arrastra los campos que deseas usar para filtrar la tabla dinámica (por ejemplo, "Provincia").

- **Modificar los Valores**:
   - Haz clic en el campo en el área de valores para cambiar la forma en que se resumen los datos (por ejemplo, suma, promedio, cuenta).

- **Aplicar Filtros y Segmentaciones**:
   - Puedes usar filtros en la tabla dinámica para centrarse en subconjuntos específicos de datos.
   - Para una experiencia interactiva, puedes insertar **segmentaciones** desde la pestaña **"Analizar"** > **"Insertar segmentación"**.

# Propiedades de las Tablas Dinámicas

- **Agrupación de Datos**: Puedes agrupar datos por fechas (meses, trimestres, años) o por categorías personalizadas.

- **Campos Calculados**: Crea nuevos campos en la tabla dinámica que realizan cálculos personalizados basados en los datos existentes.

- **Estilos y Formatos**: Personaliza la apariencia de tu tabla dinámica utilizando estilos predefinidos o formatos personalizados desde la pestaña **"Diseño"**.

- **Actualización Automática**: La tabla dinámica puede actualizarse automáticamente cuando los datos de origen cambian. Ve a **"Opciones de tabla dinámica"** y marca la opción **"Actualizar al abrir el archivo"**.

- **Mostrar Datos Detallados**: Haz doble clic en una celda de valor para ver los datos detallados que componen ese resumen.

- **Campos de Filtro de Informe**: Permiten filtrar la tabla dinámica en base a uno o más campos. Son útiles para analizar datos por diferentes criterios sin cambiar la estructura de la tabla dinámica.

- **Segmentación y Gráficos Dinámicos**: Los segmentadores proporcionan botones para filtrar datos fácilmente. Puedes insertar gráficos dinámicos que se actualizan automáticamente con la tabla dinámica.


# Videos

#### Tablas Dinamicas, lo básico
<div align="center">
  <a href="https://vimeo.com/thepowermba/review/844189306/906eb40678">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>


#### Trucos Tablas Dinámicas
<div align="center">
  <a href="https://vimeo.com/844283395/edca83ae50">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>



#### Potenciar Tablas Dinámicas
<div align="center">
  <a href="https://vimeo.com/844283656/cdbedf6859">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>


#### Analizar y Dinamizar Tablas Dinámicas
<div align="center">
  <a href="https://vimeo.com/845273856/65500f7b57">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>

#### Porcentajes Tablas Dinámicas
<div align="center">
  <a href="https://vimeo.com/844283857/f6ddadc891">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>

#### Tablas Dinámicas desde Diferentes Hojas
<div align="center">
  <a href="https://vimeo.com/844287167/5bc7ae6414">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>


#### Elementos Calculados Tablas Dinámicas
<div align="center">
  <a href="https://vimeo.com/844286865/4420fe46c1">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>