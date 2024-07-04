---
description: >-
  Aprenderemos funciones lógicas que realizan pruebas y comparaciones, devolviendo VERDADERO o FALSO, cruciales para decisiones y operaciones condicionales. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Funciones Lógicas

Las funciones lógicas en Excel se utilizan para realizar pruebas y comparaciones que devuelven valores de VERDADERO o FALSO. Estas funciones son fundamentales para la toma de decisiones y la ejecución de operaciones condicionales dentro de las hojas de cálculo.  Las principales funciones lógicas que tenemos en Excel son: 
Claro, aquí tienes una tabla en formato Markdown con la información sobre las funciones lógicas solicitadas:


| Función             | Descripción                                                                                       | Sintaxis                                      | Ejemplo                                                    |
|---------------------|---------------------------------------------------------------------------------------------------|-----------------------------------------------|------------------------------------------------------------|
| `=SI()`           | Evalúa una condición y devuelve un valor si la condición es VERDADERO y otro si es FALSO.         | `=SI(condición; valor_si_verdadero; valor_si_falso)` | `=SI(A1 > 10; "Mayor que 10"; "Menor o igual a 10")`        |
| `=Y()`            | Comprueba si todas las condiciones son verdaderas. Devuelve VERDADERO si todas son verdaderas.    | `=Y(condición1; condición2; ...)`             | `=Y(A1 > 10; B1 < 5)` (Devuelve VERDADERO si A1 > 10 y B1 < 5) |
| `=O()`             | Comprueba si al menos una de las condiciones es verdadera. Devuelve VERDADERO si alguna es verdadera. | `=O(condición1; condición2; ...)`             | `=O(A1 > 10; B1 < 5)` (Devuelve VERDADERO si A1 > 10 o B1 < 5) |
| `NO()`           | Invierte el valor lógico de su argumento. Si el argumento es VERDADERO, NO devuelve FALSO, y viceversa. | `=NO(condición)`                              | `=NO(A1 > 10)` (Devuelve VERDADERO si A1 no es mayor que 10) |
| `SI.ERROR()` | Devuelve un valor especificado si una fórmula genera un error; de lo contrario, devuelve el resultado de la fórmula. | `=SI.ERROR(valor; valor_si_error)`            | `=SI.ERROR(A1/B1; "Error en la división")` (Devuelve "Error en la división" si B1 es 0 o está vacío) |
| `SI.ND()`     | Devuelve un valor especificado si una fórmula genera el error `#N/A`; de lo contrario, devuelve el resultado de la fórmula. | `=SI.ND(valor; valor_si_nd)`                  | `=SI.ND(A2/B2; "División por cero")`                        |

Esta tabla resume las principales funciones lógicas en Excel, proporcionando una descripción, la sintaxis y un ejemplo práctico para cada una.


# Videos

#### Funciones Logicas 
<div align="center">
  <a href="https://vimeo.com/969980273/500d2eac2e?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>