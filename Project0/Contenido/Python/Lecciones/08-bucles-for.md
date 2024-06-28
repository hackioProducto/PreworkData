---
description: >-
  Los bucles `for` iteran sobre secuencias como listas y rangos. Usan `range()` para generar secuencias numéricas. Las listas por comprensión crean listas de manera concisa. `for` es ideal para colecciones, mientras `while` para condiciones.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>

# Qué son los bucles `for` y sus características

Los **bucles `for`** en Python permiten iterar sobre una secuencia de elementos, ejecutando un bloque de código para cada elemento en la secuencia. Son útiles para recorrer listas, cadenas, rangos y otros iterables. Sus principales características son:

1. **Iteración sobre Secuencias**: Los bucles `for` recorren elementos de una secuencia en el orden en que aparecen.
2. **Fácil de Usar**: Proporcionan una forma sencilla y legible de iterar sobre elementos.
3. **Compatible con Varios Tipos**: Pueden iterar sobre listas, tuplas, diccionarios, conjuntos, cadenas, y objetos generados con `range()`.

Su sintaxis básica es: 

```python
# Definimos una lista
frutas = ["manzana", "banana", "cereza"]

# Usamos un bucle for para iterar sobre la lista
for fruta in frutas:
    print(fruta)
```

## List Comprehension

La **list comprehension** es una forma concisa y eficiente de crear listas utilizando bucles `for` dentro de corchetes. Sus principales características son:

1. **Sintaxis Concisa**: Permite crear listas en una sola línea.
2. **Mayor Legibilidad**: Hace que el código sea más legible y compacto.

Un ejemplo de *list comprehension*: 

```python
# Crear una lista de cuadrados usando list comprehension
cuadrados = [x**2 for x in range(10)]
print(cuadrados)
```


## `range()`

La función `range()` se utiliza para generar una secuencia de números, que es muy útil en bucles `for`. Sus principales características son:

1. **Generación de Secuencias**: `range()` genera una secuencia de números enteros.

2. **Parámetros Flexibles**: Puedes especificar el inicio, fin y paso de la secuencia.

Un ejemplo de su sintaxis es:

```python
# Usamos range() para iterar del 0 al 4
for i in range(5):
    print(i)

# Usamos range() con un inicio, fin y paso específicos
for i in range(1, 10, 2):
    print(i)
```

## `zip()`

La función `zip()` se utiliza para combinar varias iterables (como listas o tuplas) elemento a elemento, creando tuplas. Sus principales características son:

1. **Combinación de Iterables**: `zip()` agrupa elementos de múltiples iterables en tuplas.

2. **Longitud del Iterador Más Corto**: El iterador resultante tiene la longitud del iterador más corto.

Un ejemplo de su sintaxis es:

```python
# Definimos dos listas
nombres = ["Alice", "Bob", "Charlie"]
edades = [25, 30, 35]

# Usamos zip() para combinar las listas
combinado = zip(nombres, edades)

# Iteramos sobre el resultado de zip()
for nombre, edad in combinado:
    print(nombre, edad)
```

## `enumerate()`

La función `enumerate()` se utiliza para iterar sobre una secuencia (como una lista o una tupla), obteniendo tanto el índice como el valor de cada elemento. Sus principales características son:

1. **Obtención de Índices y Valores**: `enumerate()` devuelve tanto el índice como el valor de cada elemento en la secuencia.

2. **Inicio Opcional**: Puedes especificar el número inicial del índice.

Un ejemplo de su sintaxis es:

```python
# Definimos una lista
frutas = ["manzana", "banana", "cereza"]

# Usamos enumerate() para iterar sobre la lista con índices
for indice, fruta in enumerate(frutas):
    print(indice, fruta)

# Usamos enumerate() con un índice inicial específico
for indice, fruta in enumerate(frutas, start=1):
    print(indice, fruta)
```


# Comparación con Bucles `while`

Los bucles `for` y `while` son similares en algunos aspectos, pero tienen diferencias clave:

- **Estructura**: `for` itera sobre una secuencia de elementos, mientras que `while` repite el código mientras una condición sea verdadera.

- **Uso**: `for` es más adecuado para iterar sobre colecciones como listas y cadenas, mientras que `while` es mejor para repeticiones basadas en condiciones.


# Jupyter Contenido

{% file src="../Jupyters/08-bucles-for.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}


# Videos

#### Bucles `for` en listas, tuplas y sets. 
<div align="center">
  <a href="https://vimeo.com/933664603/1bf00cd541?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="bucles for listas, tuplas, sets" />
  </a>
</div>

#### Bucles `for` con Diccionarios
<div align="center">
  <a href="https://vimeo.com/933673924/7a3c80f98f?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="for en diccionarios" />
  </a>
</div>

#### Función `range`
<div align="center">
  <a href="https://vimeo.com/933655089/a8e168f9e0?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="funcion range" />
  </a>
</div>


#### Función `zip`
<div align="center">
  <a href="https://vimeo.com/933729836/ff584087a0?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="condicionales anidados" />
  </a>
</div>

#### Función `enumerate`
<div align="center">
  <a href="https://vimeo.com/933851538/326f418494?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="funcion enumerate />
  </a>
</div>


#### *List comprehension*
<div align="center">
  <a href="https://vimeo.com/933711940/eb57d929ff?share=copy ">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="list comprehension" />
  </a>
</div>

# Jupyter Ejercicios

{% file src="../Ejercicios/08-bucles-for.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code para practicar.
{% endfile %}

