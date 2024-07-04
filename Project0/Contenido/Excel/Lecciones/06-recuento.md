---
description: >-
   Aprenderemos funciones de recuento las cuales cuentan celdas, números o valores específicos en rangos de datos, facilitando el análisis de grandes conjuntos de datos.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Funciones de Recuento 

Las funciones de recuento se utilizan para contar celdas, números, o valores específicos dentro de un rango de datos. Estas funciones nos permiten analizar grandes conjuntos de datos y extraer información relevante. Las principales funciones de recuento son: 


| Función               | Descripción                                              | Sintaxis                                   | Ejemplo                                            |
|-----------------------|----------------------------------------------------------|--------------------------------------------|----------------------------------------------------|
| `CONTAR`              | Cuenta el número de celdas que contienen números.        | `=CONTAR(rango)`                           | `=CONTAR(A1:A10)` (Cuenta celdas con números en A1:A10)    |
| `CONTARA`             | Cuenta el número de celdas que no están vacías.          | `=CONTARA(rango)`                          | `=CONTARA(A1:A10)` (Cuenta celdas no vacías en A1:A10)     |
| `CONTAR.BLANCO`       | Cuenta el número de celdas vacías.                       | `=CONTAR.BLANCO(rango)`                    | `=CONTAR.BLANCO(A1:A10)` (Cuenta celdas vacías en A1:A10)  |
| `CONTAR.SI`           | Cuenta el número de celdas que cumplen un criterio.      | `=CONTAR.SI(rango; criterio)`              | `=CONTAR.SI(A1:A10; ">10")` (Cuenta celdas > 10 en A1:A10) |
| `CONTAR.SI.CONJUNTO`  | Cuenta celdas que cumplen múltiples criterios.           | `=CONTAR.SI.CONJUNTO(rango1; crit1; ... )` | `=CONTAR.SI.CONJUNTO(A1:A10; ">10", B1:B10; "<5")` (Cuenta celdas > 10 en A1:A10 y < 5 en B1:B10) |
| `CONTAR.VALOR`        | Devuelve la cantidad de celdas no vacías en un rango.    | `=CONTAR.VALOR(rango)`                     | `=CONTAR.VALOR(A1:A10)` (Cuenta celdas no vacías en A1:A10)|



# Videos

#### Recuento de Datos
<div align="center">
  <a href="https://vimeo.com/969875224/176b2f511f?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>