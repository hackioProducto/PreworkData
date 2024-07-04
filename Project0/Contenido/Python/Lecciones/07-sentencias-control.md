---
description: >-
    Las sentencias de control, como los condicionales (if, elif, else) y los bucles while, dirigen el flujo del programa según condiciones y repiten bloques de código mientras sean verdaderas.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="logo hack(io)" />
</div>

# Qué son las sentencias de control y sus características

Las **sentencias de control** en Python permiten dirigir el flujo de ejecución del programa según condiciones específicas o repetir bloques de código múltiples veces. En este resumen, veremos dos tipos principales: condicionales y bucles `while`.

## Condicionales

Los **condicionales** se utilizan para ejecutar diferentes bloques de código según ciertas condiciones. Las principales características son:

1. **if**: Ejecuta un bloque de código si la condición es verdadera.

2. **elif**: Añade condiciones adicionales si la condición anterior es falsa.

3. **else**: Ejecuta un bloque de código si todas las condiciones anteriores son falsas.

Un ejemplo de condicionales:

```python
# Definimos una variable
edad = 20

# Usamos una sentencia if
if edad < 18:
    print("Menor de edad")
elif edad < 65:
    print("Adulto")
else:
    print("Senior")
```

## Bucle While

El **bucle `while`** permite repetir un bloque de código mientras una condición sea verdadera. Sus principales características son:

1. **Repetición Condicional**: El bucle se ejecuta mientras la condición especificada sea verdadera.

2. **Control del Bucle**: Puedes usar `break` para salir del bucle antes de que la condición sea falsa o `continue` para saltar a la siguiente iteración.

Un ejemplo de bucle while: 

```python
# Definimos una variable
contador = 0

# Usamos un bucle while
while contador < 5:
    print("Contador:", contador)
    contador += 1  # Incrementamos el contador
```



### Comparación con Bucles `for`

Los bucles `while` y `for` (que veremos en la siguiente lección) son similares en algunos aspectos, pero tienen diferencias clave:

- **Estructura**: `while` repite el código mientras la condición sea verdadera, mientras que `for` itera sobre una secuencia de elementos.

- **Uso**: `while` es más adecuado para repeticiones basadas en condiciones, mientras que `for` es mejor para iterar sobre colecciones como listas y cadenas.

# Jupyter Contenido

{% file src="../Jupyters/07-sentencias-control.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}


# Videos

#### Condicionales `if`
<div align="center">
  <a href="https://vimeo.com/933410755/4150c7c7e3?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Condicionales if" />
  </a>
</div>

#### Condicionales `if`... `else`
<div align="center">
  <a href="https://vimeo.com/933727493/7094a07ea4?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="condicionales if else" />
  </a>
</div>

#### Condicionales `if`... `elif`... `else`
<div align="center">
  <a href="https://vimeo.com/933291258/66b90c0055?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="condicionales if elif else" />
  </a>
</div>


#### Condicionales anidados
<div align="center">
  <a href="https://vimeo.com/933202791/292dbbf3aa?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="condicionales anidados" />
  </a>
</div>

#### Operadores `and`, `or` en condicionales
<div align="center">
  <a href="https://vimeo.com/933655989/48e4393c3d?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="and y or" />
  </a>
</div>


#### Bucles `while`
<div align="center">
  <a href="https://vimeo.com/933632831/c9f59e99af?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="bucles while" />
  </a>
</div>

