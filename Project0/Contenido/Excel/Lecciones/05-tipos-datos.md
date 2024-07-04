---
description: >-
    Excel maneja números, texto, fechas, horas, booleanos, moneda, porcentajes, fracciones y texto enriquecido para análisis eficiente y preciso.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Tipos de Datos en Excel

En Excel, podemos trabajar con diversos tipos de datos que nos permiten manejar y analizar la información de manera eficiente. Los principales tipos de datos que se pueden utilizar en Excel son:

## Números

Los números son uno de los tipos de datos más comunes en Excel e incluyen:

- **Enteros**: Números sin decimales, por ejemplo, 10, -5.

- **Decimales**: Números con decimales, por ejemplo, 3.14, -0.25.

- **Porcentajes**: Representados como un número seguido del símbolo de porcentaje, por ejemplo, 50%, 0.25%.



## Texto (*String*)

Los datos de texto pueden incluir cualquier combinación de letras, números y símbolos. Se utilizan para representar palabras, frases, nombres, direcciones, etc.



## Fechas y Horas

Excel tiene formatos específicos para representar fechas y horas. Estos datos pueden utilizarse en cálculos de tiempo y fechas.

- **Fechas**: Representan un día específico.
    ```excel
    01/01/2022
    15-Mar-2022
    ```
- **Horas**: Representan un momento específico del día.
    ```excel
    12:00 PM
    23:45
    ```
- **Fecha y Hora Combinadas**: Combinan ambas representaciones.
    ```excel
    01/01/2022 12:00 PM
    ```

## Booleanos (Lógicos)

Los datos booleanos solo pueden tener uno de dos valores: VERDADERO o FALSO. Se utilizan en operaciones lógicas y condicionales. Incluyen `VERDADERO` y `FALSO`

## Moneda

Los datos de moneda son números formateados específicamente para representar valores monetarios. Incluyen un símbolo de moneda y pueden tener decimales.

```excel
$123.45
€89.00
¥1000
```

## Porcentajes

Los porcentajes son una representación especial de los números decimales, multiplicados por 100 y seguidos del símbolo de porcentaje (%).

```excel
50% (equivalente a 0.50)
7.5% (equivalente a 0.075)
```

## Fracciones

Excel puede formatear y calcular con fracciones. Esto es útil en escenarios específicos, como recetas o cálculos técnicos.


## Texto Enriquecido (*Rich Text*)

Aunque no es un tipo de dato distinto en sí mismo, Excel permite formatear texto dentro de una celda con diferentes fuentes, tamaños, colores y estilos (negrita, cursiva, subrayado).

```excel
"Texto en **negrita**"
"Texto en *cursiva*"
```

# Formatos de Celda

Para representar correctamente los tipos de datos anteriores, Excel ofrece varios formatos de celda que puedes aplicar:

- **General**: Formato predeterminado que no especifica ningún formato particular.

- **Número**: Permite ajustar el número de decimales y el uso de separadores de miles.

- **Moneda**: Incluye el símbolo de la moneda y el número de decimales.

- **Contabilidad**: Similar al formato de moneda, pero con un alineado diferente.

- **Fecha**: Diferentes formatos de fechas, como `MM/DD/AAAA` o `DD-MMM-AAAA`.

- **Hora**: Diferentes formatos de hora, como `HH:MM AM/PM` o `HH:MM`.

- **Porcentaje**: Multiplica el valor por 100 y agrega un símbolo de porcentaje.

- **Fracción**: Representa el número como una fracción.

- **Texto**: Trata el contenido de la celda como texto, incluso si es un número.

- **Especial**: Formatos específicos como códigos postales, números de teléfono, etc.

Para aplicar formatos:

- Seleccionamos las celdas o columnas a las que queremos aplicar el formato.

-  Hacemos clic derecho Selecciona "Formato de celdas". Alternativamente también se puede acceder a los distintos formatos a través	del selector de la pestaña inicio como se muestra en la imagen. 

![selector](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Excel/Formato_datos.jpg)

- Eligimos el formato apropiado.  




# Funciones de tipo de dato 


Las funciones de tipos de datos en Excel son muy útiles para revisar y cambiar el contenido de las celdas. Estas funciones te ayudan a saber si lo que tienes en una celda es un número, un texto, un valor lógico (como VERDADERO o FALSO), y también a convertir esos datos a otros formatos. Aquí te explico algunas de las funciones más usadas:


| Función             | Descripción                                                                                       | Sintaxis                                      | Ejemplo                                                    |
|---------------------|---------------------------------------------------------------------------------------------------|-----------------------------------------------|------------------------------------------------------------|
| `=ESNUMERO()`       | Comprueba si el contenido de la celda es un número. Devuelve VERDADERO si es un número.           | `=ESNUMERO(valor)`                            | `=ESNUMERO(A1)` (Devuelve VERDADERO si A1 es un número)    |
| `=ESTEXTO()`        | Comprueba si el contenido de la celda es un texto. Devuelve VERDADERO si es un texto.             | `=ESTEXTO(valor)`                             | `=ESTEXTO(D1)` (Devuelve VERDADERO si D1 es un texto)      |
| `=ESLOGICO()`       | Comprueba si el contenido de la celda es un valor lógico (VERDADERO o FALSO).                      | `=ESLOGICO(valor)`                            | `=ESLOGICO(A1)` (Devuelve FALSO si A1 no es un booleano)   |
| `=ESLOGICO()`       | Comprueba si el contenido de la celda es un valor lógico (VERDADERO o FALSO).                      | `=ESLOGICO(condición)`                        | `=ESLOGICO(A1=A1)` (Devuelve VERDADERO si A1=A1)           |
| `=N()`              | Convierte un valor a un número. Si es una fecha, devuelve el número de serie; si es VERDADERO/FALSO, devuelve 1/0. | `=N(valor)`                                   | `=N(A1)` (Convierte A1 a número)                           |
| `=N()`              | Convierte un valor a un número. Devuelve 0 si es texto u otro tipo de dato no numérico.            | `=N(valor)`                                   | `=N(D1)` (Devuelve 0 si D1 es texto)                       |
| `=VALORATEXTO()`    | Convierte un valor a texto.                                                                       | `=VALORATEXTO(valor)`                         | `=VALORATEXTO(A1)` (Convierte A1 a texto)                  |
| `=TEXTO()`          | Convierte un valor a texto con un formato especificado.                                           | `=TEXTO(valor; formato)`                      | `=TEXTO(C6; "0.00E+0")` (Devuelve 496E+0 en formato científico) |
| `=FECHANUMERO()`    | Convierte una fecha a su número de serie.                                                         | `=FECHANUMERO(fecha)`                         | `=FECHANUMERO("1/1/2022")` (Devuelve 44526)                |






# Videos

#### Tipos de Datos 
<div align="center">
  <a href="https://vimeo.com/969885448/6e7d2c4ae6?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>