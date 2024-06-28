---
description: >-
    Los sets son colecciones desordenadas y mutables que almacenan elementos únicos. Son útiles para evitar duplicados y realizar operaciones de conjunto como unión, intersección y diferencia. Soportan elementos heterogéneos y permiten acceso rápido.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="logo hack(io)" />
</div>


# Qué son los sets y sus características

Los **sets** en Python son colecciones desordenadas y mutables que almacenan elementos únicos. Son útiles cuando necesitas almacenar elementos sin duplicados y realizar operaciones de conjunto como unión, intersección y diferencia. Sus principales características son:

1. **Desordenados**: Los sets no mantienen un orden específico de los elementos. Por lo que no podremos acceder a sus elementos con indexación como estuvimos viendo con los otros tipos de datos. 

2. **Mutables**: Puedes modificar un set después de su creación (añadir, eliminar elementos).

3. **Únicos**: No permiten elementos duplicados; cada elemento es único.

4. **Heterogéneos**: Pueden contener elementos de diferentes tipos de datos, como enteros, cadenas, tuplas, etc.

Los sets se crean usando llaves `{}` o la función `set()`, separando los elementos por comas, como vemos en el ejemplo a continuación:

```python
# Set vacío
set_vacio = set()

# Set con elementos
numeros = {1, 2, 3, 4, 5}

# Set con valores de distintos tipos
mixto = {1, "dos", 3.0, (4, "cinco")}
```

# Métodos Comunes de Sets

Los sets tienen muchos métodos útiles para manipular y analizar los elementos:

- `len(set)`: Devuelve el número de elementos en el set.

- `add(elemento)`: Añade un elemento al set.

- `remove(elemento)`: Elimina el elemento del set; genera un error si el elemento no existe.

- `discard(elemento)`: Elimina el elemento del set si existe.

- `pop()`: Elimina y devuelve un elemento aleatorio del set.

- `clear()`: Elimina todos los elementos del set.

- `union(otro_set)`: Devuelve un nuevo set con los elementos de ambos sets.

- `intersection(otro_set)`: Devuelve un nuevo set con los elementos comunes a ambos sets.

- `difference(otro_set)`: Devuelve un nuevo set con los elementos del primer set que no están en el segundo.

Algunos ejemplos de estos métodos:

```python
# Definimos un set
numeros = {1, 2, 3, 4, 5}

# Contamos el número de elementos que tenemos en el set
print(len(numeros)) # Salida: 5

# Añadimos un nuevo elemento al set
numeros.add(6)
print(numeros) # Salida: {1, 2, 3, 4, 5, 6}

# Eliminamos un elemento del set
numeros.remove(3)
print(numeros) # Salida: {1, 2, 4, 5, 6}

# Eliminamos un elemento si existe en el set
numeros.discard(2)
print(numeros) # Salida: {1, 4, 5, 6}

# Obtenemos la unión de dos sets
otro_set = {5, 6, 7, 8}
union_set = numeros.union(otro_set)
print(union_set) # Salida: {1, 4, 5, 6, 7, 8}

# Obtenemos la intersección de dos sets
interseccion_set = numeros.intersection(otro_set)
print(interseccion_set) # Salida: {5, 6}

# Obtenemos la diferencia de dos sets
diferencia_set = numeros.difference(otro_set)
print(diferencia_set) # Salida: {1, 4}
```



# Modificación de Sets

Puedes añadir nuevos elementos o eliminar los existentes:

```python
# Añadir un nuevo elemento
frutas.add("pera")
print(frutas) # Salida: {"manzana", "banana", "cereza", "pera"}

# Eliminar un elemento existente
frutas.remove("banana")
print(frutas) # Salida: {"manzana", "cereza", "pera"}
```

# Comparación con Listas

Los sets y las listas son similares en algunos aspectos, pero tienen diferencias clave:

- **Estructura**: Las listas son colecciones ordenadas de elementos, mientras que los sets son colecciones desordenadas de elementos únicos.

- **Uso**: Los sets son más adecuados para almacenar elementos únicos y realizar operaciones de conjunto, mientras que las listas son mejores para secuencias ordenadas de elementos.

# Jupyter Contenido

{% file src="../Jupyters/06-sets.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}

# Videos

#### Definición de Sets
<div align="center">
  <a href="https://vimeo.com/927911486/e2e3be6ae1?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Definición sets" />
  </a>
</div>

#### Métodos de Sets
<div align="center">
  <a href="https://vimeo.com/929918309/567ed2dc47?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos sets" />
  </a>
</div>

#### Métodos de Conjuntos en Sets
<div align="center">
  <a href="https://vimeo.com/929879423/c36798d090?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos conjuntos" />
  </a>
</div>


# Jupyter Ejercicios

{% file src="../Ejercicios/06-sets.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code para practicar.
{% endfile %}