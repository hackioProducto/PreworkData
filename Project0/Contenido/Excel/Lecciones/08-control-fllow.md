---
description: >-
   El "control de flujo" o "control flow" se refiere al orden en el que se ejecutan las instrucciones o sentencias.  Permite  la ejecución de las diferentes partes de un programa en función de ciertas condiciones y estructuras de control.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Control de Flujo en Excel

El "control de flujo" en Excel es básicamente el orden en el que se ejecutan las instrucciones o fórmulas. Te permite decidir qué partes de tu hoja de cálculo se usan en función de ciertas condiciones. 

---

| Función             | Descripción                                                                                       | Sintaxis                                      | Ejemplo                                                    |
|---------------------|---------------------------------------------------------------------------------------------------|-----------------------------------------------|------------------------------------------------------------|
| `=SI()`             | Evalúa una condición lógica y devuelve un valor si la condición es verdadera y otro si es falsa. | `=SI(condición_lógica, valor_si_verdadero, valor_si_falso)` | `=SI(A2=B2; "Son Iguales"; "Son Distintos")` (Devuelve "Son Iguales" si A2 es igual a B2) |
| `=SI.CONJUNTO()`    | Permite evaluar múltiples condiciones lógicas y devolver el valor correspondiente a la primera condición verdadera. | `=SI.CONJUNTO(cond1, retorno1, cond2, retorno2, ...)` | `=SI.CONJUNTO(A1 > B1; "Primera"; A2 > B2; "Segunda"; A3 > B3; "Tercera")` (Devuelve "Tercera" si A3 es mayor que B3) |
| `=SI.ERROR()`       | Gestiona y trata errores en las fórmulas, devolviendo un valor alternativo si hay un error.      | `=SI.ERROR(valor, valor_si_error)`            | `=SI.ERROR(A5/A5; 0)` (Devuelve 0 si la fórmula A5/A5 genera un error)                    |



# Videos

#### Control Flow
<div align="center">
  <a href="https://vimeo.com/969980396/39de5fc70b?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>