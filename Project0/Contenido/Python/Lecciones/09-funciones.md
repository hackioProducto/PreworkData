---
description: >-
    Las funciones en Python son bloques de código reutilizables definidos con `def` que pueden aceptar parámetros y devolver valores. Las funciones `lambda` son anónimas y usadas para operaciones simples. Utiliza `return` para devolver valores y finalizar la ejecución de una función.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Qué son las funciones y sus características

Las **funciones** son bloques de código reutilizables que realizan una tarea específica. Son útiles para estructurar programas, mejorar la legibilidad y evitar la duplicación de código. Sus principales características son:

1. **Definición con `def`**: Las funciones se definen utilizando la palabra clave `def` seguida del nombre de la función y paréntesis.

2. **Parámetros Opcionales**: Pueden aceptar argumentos para personalizar su comportamiento.

3. **Valores de Retorno**: Pueden devolver valores utilizando la palabra clave `return`.

Su sintaxis básica es:

```python
# Definimos una función simple
def saludar():
    print("Hola, mundo!")

# Llamamos a la función
saludar()
```

# Parámetros y Argumentos

Las funciones pueden aceptar parámetros para recibir datos de entrada. Sus principales características son:

1. **Parámetros**: Variables que se definen en la función para recibir argumentos.

2. **Argumentos**: Valores reales que se pasan a la función cuando se llama.

Un ejemplo con código sería: 

```python
# Definimos una función con parámetros
def saludar(nombre):
    print(f"Hola, {nombre}!")

# Llamamos a la función con un argumento
saludar("Alice")
```

# Recursividad

La **recursividad** es una técnica en la que una función se llama a sí misma para resolver un problema. Sus principales características son:

1. **Simplificación de Problemas Complejos**: Divide problemas complejos en subproblemas más simples.

2. **Caso Base**: Debe tener un caso base para detener la recursión.

Un ejemplo de función recursiva: 

```python
# Definimos una función recursiva para calcular el factorial
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)

# Llamamos a la función recursiva
print(factorial(5))  # Salida: 120
```

# `*args` y `**kwargs`

`*args` y `**kwargs` permiten a las funciones aceptar un número variable de argumentos. Sus principales características son:

1. **`*args`**: Permite pasar un número variable de argumentos posicionales.

2. **`**kwargs`**: Permite pasar un número variable de argumentos con nombre (clave-valor).

Un ejemplo de función con args y kwargs:

```python
# Definimos una función que acepta *args y **kwargs
def mostrar_argumentos(*args, **kwargs):
    print("args:", args)
    print("kwargs:", kwargs)

# Llamamos a la función con múltiples argumentos
mostrar_argumentos(1, 2, 3, nombre="Alice", edad=30)
```

# Jupyter Contenido

{% file src="../Jupyters/09-funciones-intro.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}

{% file src="../Jupyters/09-funciones-argumentos.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}

# Videos

#### Introducción
<div align="center">
  <a href="https://vimeo.com/938643339/f90c12eae6?share=copy ">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="introduccion" />
  </a>
</div>

#### Variable local *vs* global
<div align="center">
  <a href="https://vimeo.com/939183812/1b3df0912e?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="localvsglobal" />
  </a>
</div>

#### Funciones sin parámetros
<div align="center">
  <a href="https://vimeo.com/939183707/0771ccdbf6?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Funciones sin parámetros" />
  </a>
</div>


#### Funciones con parámetros
<div align="center">
  <a href="https://vimeo.com/938597538/6de3557143?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="funciones con parámetros" />
  </a>
</div>

#### Funciones con parámetros por defecto
<div align="center">
  <a href="https://vimeo.com/938997522/df325915b5?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="defecto" />
  </a>
</div>



#### *args* y *kwargs*
<div align="center">
  <a href="https://vimeo.com/938572498/93b0947330?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="args y kwargs" />
  </a>
</div>

#### Recursividad
<div align="center">
  <a href="https://vimeo.com/938643400/b915c84a39?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="recursividad" />
  </a>
</div>

