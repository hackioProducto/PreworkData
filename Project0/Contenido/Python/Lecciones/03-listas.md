---
description: >-
   Las listas en Python son colecciones ordenadas y mutables que permiten almacenar y manipular múltiples tipos de datos.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="logo hack(io)" />
</div>

# Qué son las listas y sus características

Las **listas** en Python son colecciones ordenadas, mutables, y heterogéneas que permiten almacenar múltiples elementos en una sola variable. Son uno de los tipos de datos más utilizados en Python debido a su flexibilidad y capacidad para manejar datos de diferentes tipos. Sus principales características son: 


1. **Ordenadas**: Las listas mantienen el orden de los elementos. Cada elemento tiene un índice, empezando por 0.

2. **Mutables**: Puedes modificar una lista después de su creación (añadir, eliminar, cambiar elementos).

3. **Heterogéneas**: Pueden contener elementos de diferentes tipos de datos, como enteros, cadenas, listas anidadas, etc.

4. **Dinámicas**: Pueden crecer o disminuir en tamaño según sea necesario.


Las listas se crean usando corchetes `[]`, separando los elementos por comas, como vemos en el ejemplo a continuación:

```python
# Lista vacía
lista_vacia = []

# Lista con elementos de tipo integer
numeros = [1, 2, 3, 4, 5]

# lista con elemento de tipo string
frutas = ["manzana", "banana", "cereza"]

# lista con elementos de distintos tipos
mixta = [1, "dos", 3.0, [4, "cinco"]]
```


# Métodos Comunes de Listas

Las listas tienen muchos métodos útiles para manipular y analizar los elementos:

- `len(lista)`: Devuelve el número de elementos en la lista.

- `sort()`: Ordena los elementos en la lista en su lugar.

- `sorted(lista)`: Devuelve una nueva lista ordenada.

- `reverse()`: Invierte el orden de los elementos en la lista en su lugar.

- `index(elemento)`: Devuelve el índice de la primera aparición del elemento.

- `count(elemento)`: Devuelve el número de veces que aparece el elemento.

- `clear()`: Elimina todos los elementos de la lista.

Algunos ejemplos de estos métodos: 

```python
# definimos una lista
numeros = [3, 1, 4, 1, 5, 9, 2]

# contamos el número de elementos que tenemos en la lista
print(len(numeros)) # Salida: 7

# ordenamos los elementos de la lista de menor a mayor, sobreescribiendo sobre la variable original
numeros.sort() # Salida: [1, 1, 2, 3, 4, 5, 9]

# le damos la vuelta a la lista
numeros.reverse() # Salida: [9, 5, 4, 3, 2, 1, 1]

# sacamos el elemento que está en la posición (índice) 4
print(numeros.index(4)) # Salida: 2

# contamos cuántas veces aparece el elemento 1 en la lista
print(numeros.count(1)) # Salida: 2

# vaciamos la lista
numeros.clear() # Salida: []            
```

# Modificación de Listas

Puedes añadir nuevos elementos o actualizar los existentes:

```python
# Definimos una lista
frutas = ["manzana", "banana", "cereza"]

# Añadir un nuevo elemento
frutas.append("pera")
print(frutas) # Salida: ["manzana", "banana", "cereza", "pera"]

# Insertar un nuevo elemento en una posición específica
frutas.insert(1, "naranja")
print(frutas) # Salida: ["manzana", "naranja", "banana", "cereza", "pera"]

# Actualizar un elemento existente
frutas[0] = "kiwi"
print(frutas) # Salida: ["kiwi", "naranja", "banana", "cereza", "pera"]

# Eliminar un elemento por su valor
frutas.remove("banana")
print(frutas) # Salida: ["kiwi", "naranja", "cereza", "pera"]

# Eliminar el último elemento
frutas.pop()
print(frutas) # Salida: ["kiwi", "cereza"]
```


# Jupyter Contenido

{% file src="../Jupyters/03-listas.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}


# Videos

#### Definición e Indexación de Listas
<div align="center">
  <a href="https://vimeo.com/927230071/841cb3b97b?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Definición e Indexación de Listas" />
  </a>
</div>

#### Métodos de Listas Parte I
<div align="center">
  <a href="https://vimeo.com/926245199/8cc338d374?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>

#### Métodos de Listas Parte II
<div align="center">
  <a href="https://vimeo.com/926256237/b1d5f7c251?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos listas" />
  </a>
</div>

