---
description: >-
   Las tuplas en Python son colecciones ordenadas e inmutables que permiten almacenar múltiples elementos heterogéneos. Son útiles para datos constantes y ofrecen eficiencia.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="logo hack(io)" />
</div>

# Qué son las tuplas y sus características

Las **tuplas** en Python son colecciones ordenadas e inmutables que permiten almacenar múltiples elementos en una sola variable. Son útiles cuando necesitas almacenar una secuencia de elementos que no deben cambiar a lo largo del tiempo. Sus principales características son:

1. **Ordenadas**: Las tuplas mantienen el orden de los elementos. Cada elemento tiene un índice, empezando por 0.

2. **Inmutables**: Una vez creadas, no puedes modificar una tupla (no se pueden añadir, eliminar o cambiar elementos).

3. **Heterogéneas**: Pueden contener elementos de diferentes tipos de datos, como enteros, cadenas, otras tuplas, etc.

4. **Eficientes**: Al ser inmutables, Python puede optimizar su almacenamiento y acceso.

Las tuplas se crean usando paréntesis `()`, separando los elementos por comas, como vemos en el ejemplo a continuación:

```python
# Tupla vacía
tupla_vacia = ()

# Tupla con elementos de tipo integer
numeros = (1, 2, 3, 4, 5)

# Tupla con elementos de tipo string
frutas = ("manzana", "banana", "cereza")

# Tupla con elementos de distintos tipos
mixta = (1, "dos", 3.0, (4, "cinco"))
```

# Métodos Comunes de Tuplas

Aunque las tuplas son inmutables y tienen menos métodos que las listas, aún tienen algunos métodos útiles para trabajar con sus elementos:

- `len(tupla)`: Devuelve el número de elementos en la tupla.

- `index(elemento)`: Devuelve el índice de la primera aparición del elemento.

- `count(elemento)`: Devuelve el número de veces que aparece el elemento.

Algunos ejemplos de estos métodos:

```python
# Definimos una tupla
numeros = (3, 1, 4, 1, 5, 9, 2)

# Contamos el número de elementos que tenemos en la tupla
print(len(numeros)) # Salida: 7

# Sacamos el índice del elemento 4
print(numeros.index(4)) # Salida: 2

# Contamos cuántas veces aparece el elemento 1 en la tupla
print(numeros.count(1)) # Salida: 2
```

# Acceso a Elementos de una Tupla

Al igual que las listas, puedes acceder a los elementos de una tupla utilizando índices, comenzando por 0 para el primer elemento:

```python
# Definimos una tupla
frutas = ("manzana", "banana", "cereza")

# Accedemos al primer elemento
print(frutas[0]) # Salida: "manzana"

# Accedemos al último elemento
print(frutas[-1]) # Salida: "cereza"
```

# Comparación con Listas

Las tuplas y las listas son similares en algunos aspectos, pero tienen diferencias clave:

- **Mutabilidad**: Las listas son mutables, las tuplas no.

- **Uso**: Las tuplas son más adecuadas para datos constantes, mientras que las listas son mejores para datos que pueden cambiar.

# Jupyter Contenido

{% file src="../Jupyters/04-tuplas.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}

# Videos

#### Definición e Indexación de Tuplas
<div align="center">
  <a href="https://vimeo.com/927103275/0c1b2592fc?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Definición e Indexación de Listas" />
  </a>
</div>

#### Métodos de Tuplas
<div align="center">
  <a href="https://vimeo.com/926231748/9530f422fb?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>
