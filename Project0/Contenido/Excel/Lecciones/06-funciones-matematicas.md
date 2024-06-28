---
description: >-
   Aprenderemos funciones matemáticas las cuales permiten realizar cálculos aritméticos, estadísticos y manipulaciones de datos numéricos de manera rápida y precisa. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Funciones Matemáticas

Son fórmulas predefinidas que facilitan la realización de cálculos matemáticos complejos. Estas funciones nos permiten realizar operaciones aritméticas, estadísticas y otras manipulaciones de datos numéricos de manera rápida y precisa. Las principales funciones que tenemos en Excel son:


| Función           | Descripción                                              | Sintaxis                       | Ejemplo                                            |
|-------------------|----------------------------------------------------------|--------------------------------|----------------------------------------------------|
| `SUMA` (SUM)      | Suma los valores en un rango de celdas.                  | `=SUMA(rango)`                 | `=SUMA(A1:A10)` (Suma los valores en el rango A1:A10) |
| `PROMEDIO` (AVERAGE)| Calcula el promedio de los valores en un rango de celdas.| `=PROMEDIO(rango)`             | `=PROMEDIO(A1:A10)` (Calcula el promedio de los valores en A1:A10) |
| `MAX`             | Devuelve el valor máximo en un rango de celdas.          | `=MAX(rango)`                  | `=MAX(A1:A10)` (Devuelve el valor máximo en el rango A1:A10)       |
| `MIN`             | Devuelve el valor mínimo en un rango de celdas.          | `=MIN(rango)`                  | `=MIN(A1:A10)` (Devuelve el valor mínimo en el rango A1:A10)       |
| `PRODUCTO` (PRODUCT)| Multiplica todos los números dados como argumentos.    | `=PRODUCTO(número1; número2; ...)` | `=PRODUCTO(A1:A10)` (Multiplica todos los valores en el rango A1:A10) |
| `POTENCIA` (POWER)| Devuelve el resultado de elevar un número a una potencia.| `=POTENCIA(número; potencia)`  | `=POTENCIA(A1; B1)` (Eleva el valor de A1 a la potencia de B1)      |
| `RAIZ` (SQRT)     | Devuelve la raíz cuadrada de un número.                  | `=RAIZ(número)`                | `=RAIZ(A1)` (Devuelve la raíz cuadrada del valor en A1)             |
| `REDONDEAR` (ROUND)| Redondea un número al número especificado de decimales. | `=REDONDEAR(número; num_decimales)` | `=REDONDEAR(A1; 2)` (Redondea el valor de A1 a 2 decimales)       |
| `REDONDEAR.MAS` (ROUNDUP)| Redondea un número hacia arriba, alejándose de cero. | `=REDONDEAR.MAS(número; num_decimales)` | `=REDONDEAR.MAS(A1; 2)` (Redondea el valor de A1 hacia arriba a 2 decimales) |
| `REDONDEAR.MENOS` (ROUNDDOWN)| Redondea un número hacia abajo, hacia cero.    | `=REDONDEAR.MENOS(número; num_decimales)` | `=REDONDEAR.MENOS(A1; 2)` (Redondea el valor de A1 hacia abajo a 2 decimales) |
| `ENTERO` (INT)    | Redondea un número hacia abajo hasta el entero más cercano. | `=ENTERO(número)`              | `=ENTERO(A1)` (Redondea el valor de A1 hacia abajo al entero más cercano) |
| `ABS`             | Devuelve el valor absoluto de un número.                 | `=ABS(número)`                 | `=ABS(A1)` (Devuelve el valor absoluto del número en A1)            |
| `SUMAR.SI` (SUMIF)| Suma las celdas que cumplen con un criterio especificado. | `=SUMAR.SI(rango; criterio; [rango_suma])` | `=SUMAR.SI(A1:A10, ">5")` (Suma las celdas en A1:A10 que son mayores que 5) |
| `SUMAR.SI.CONJUNTO` (SUMIFS) | Suma las celdas que cumplen con múltiples criterios. | `=SUMAR.SI.CONJUNTO(rango_suma; rango_criterio1; criterio1; [rango_criterio2, criterio2]; ...)` | `=SUMAR.SI.CONJUNTO(B1:B10; A1:A10; ">5"; C1:C10; "<10")` (Suma las celdas en B1:B10 donde A1:A10 es mayor que 5 y C1:C10 es menor que 10) |
