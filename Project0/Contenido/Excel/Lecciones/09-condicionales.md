---
description: >-
   Aprenderemos funciones condicionales que nos permiten realizarcálculos basados en una o más condiciones, facilitando el análisis de datos y la toma de decisiones. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>



# Funciones Condicionales

Las funciones de cálculo condicional son aquellas que nos permiten realizar cálculos basados en una o más condiciones. Estas funciones son muy útiles para analizar datos y tomar decisiones basadas en criterios específicos. Las principales funciones de cálculo condicional en Excel son:

| Función                | Descripción                                                                             | Sintaxis                                                            | Ejemplo                                                         |
|------------------------|-----------------------------------------------------------------------------------------|---------------------------------------------------------------------|-----------------------------------------------------------------|
| `SI`             | Evalúa una condición y devuelve un valor si la condición es VERDADERO y otro si es FALSO.| `=SI(condición; valor_si_verdadero; valor_si_falso)`                 | `=SI(A1 > 10; "Mayor que 10"; "Menor o igual a 10")`             |
| `SI.ERROR`    | Devuelve un valor especificado si una fórmula genera un error; de lo contrario, devuelve el resultado de la fórmula. | `=SI.ERROR(valor; valor_si_error)`                                  | `=SI.ERROR(A1/B1; "Error en la división")`                       |
| `SI.ND`        | Devuelve un valor especificado si una fórmula genera el error `#N/A`; de lo contrario, devuelve el resultado de la fórmula. | `=SI.ND(valor; valor_si_nd)`                                        | `=SI.ND(BUSCARH("D", A1:D4, 3, FALSO); "Producto no encontrado")`|
| `CONTAR.SI`   | Cuenta el número de celdas que cumplen un criterio específico.                           | `=CONTAR.SI(rango; criterio)`                                       | `=CONTAR.SI(A1:A10; ">10")`                                      |
| `CONTAR.SI.CONJUNTO` | Cuenta el número de celdas que cumplen múltiples criterios.                       | `=CONTAR.SI.CONJUNTO(rango1; criterio1; [rango2; criterio2]; ...)`  | `=CONTAR.SI.CONJUNTO(A1:A10; ">10"; B1:B10; "<5")`               |
| `SUMAR.SI`      | Suma las celdas que cumplen con un criterio especificado.                                | `=SUMAR.SI(rango; criterio; [rango_suma])`                          | `=SUMAR.SI(A1:A10; ">5")`                                        |
| `SUMAR.SI.CONJUNTO` | Suma las celdas que cumplen con múltiples criterios.                               | `=SUMAR.SI.CONJUNTO(rango_suma; rango_criterio1; criterio1; ... )`  | `=SUMAR.SI.CONJUNTO(B1:B10; A1:A10; ">5"; C1:C10; "<10")`        |
| `PROMEDIO.SI`  | Calcula el promedio de las celdas que cumplen con un criterio especificado.           | `=PROMEDIO.SI(rango; criterio; [rango_promedio])`                   | `=PROMEDIO.SI(A1:A10; ">5")`                                     |
| `PROMEDIO.SI.CONJUNTO`  | Calcula el promedio de las celdas que cumplen múltiples criterios.            | `=PROMEDIO.SI.CONJUNTO(rango_promedio; rango_criterio1; criterio1; ...)` | `=PROMEDIO.SI.CONJUNTO(B1:B10; A1:A10; ">5"; C1:C10; "<10")`    |



# Videos

#### Cálculo Condicional
<div align="center">
  <a href="https://vimeo.com/969857760/5f70f3804f?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>