---
description: >-
   Los diccionarios son colecciones desordenadas y mutables que almacenan pares clave-valor. Son útiles para búsquedas rápidas y datos asociativos.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="logo hack(io)" />
</div>


# Qué son los diccionarios y sus características

Los **diccionarios** en Python son colecciones desordenadas y mutables que almacenan pares clave-valor. Son útiles cuando necesitas asociar claves únicas a valores específicos. Sus principales características son:

1. **Desordenados**: Los diccionarios no mantienen un orden específico de los elementos. Cada par clave-valor se almacena de manera independiente.

2. **Mutables**: Puedes modificar un diccionario después de su creación (añadir, eliminar o cambiar elementos).

3. **Heterogéneos**: Pueden contener claves y valores de diferentes tipos de datos, como enteros, cadenas, listas, otras tuplas, etc.

4. **Acceso Rápido**: Permiten acceso rápido a los valores utilizando las claves.

Los diccionarios se crean usando llaves `{}`, separando las claves de los valores por dos puntos `:` y los pares por comas, como vemos en el ejemplo a continuación:

```python
# Diccionario vacío
diccionario_vacio = {}

# Diccionario con elementos
numeros = {"uno": 1, "dos": 2, "tres": 3}

# Diccionario con valores de distintos tipos
mixto = {"entero": 1, "cadena": "dos", "lista": [1, 2, 3], "tupla": (4, "cinco")}
```

# Métodos Comunes de Diccionarios

Los diccionarios tienen muchos métodos útiles para manipular y analizar los elementos:

- `len(diccionario)`: Devuelve el número de pares clave-valor en el diccionario.

- `keys()`: Devuelve una vista de las claves en el diccionario.

- `values()`: Devuelve una vista de los valores en el diccionario.

- `items()`: Devuelve una vista de los pares clave-valor en el diccionario.

- `get(clave, valor_predeterminado)`: Devuelve el valor asociado con la clave; si la clave no existe, devuelve `valor_predeterminado`.

- `pop(clave)`: Elimina el par clave-valor asociado con la clave y devuelve el valor.

- `update(otro_diccionario)`: Actualiza el diccionario con los pares clave-valor de `otro_diccionario`.

Algunos ejemplos de estos métodos:

```python
# Definimos un diccionario
numeros = {"uno": 1, "dos": 2, "tres": 3}

# Contamos el número de elementos que tenemos en el diccionario
print(len(numeros)) # Salida: 3

# Obtenemos las claves del diccionario
print(numeros.keys()) # Salida: dict_keys(['uno', 'dos', 'tres'])

# Obtenemos los valores del diccionario
print(numeros.values()) # Salida: dict_values([1, 2, 3])

# Obtenemos los pares clave-valor del diccionario
print(numeros.items()) # Salida: dict_items([('uno', 1), ('dos', 2), ('tres', 3)])

# Obtenemos el valor asociado con una clave
print(numeros.get("dos")) # Salida: 2

# Eliminamos un par clave-valor
print(numeros.pop("uno")) # Salida: 1

# Actualizamos el diccionario con otro diccionario
numeros.update({"cuatro": 4, "cinco": 5})
print(numeros) # Salida: {'dos': 2, 'tres': 3, 'cuatro': 4, 'cinco': 5}
```

# Acceso a Elementos de un Diccionario

Puedes acceder a los valores de un diccionario utilizando sus claves:

```python
# Definimos un diccionario
frutas = {"manzana": "rojo", "banana": "amarillo", "cereza": "rojo"}

# Accedemos al valor asociado con la clave "banana"
print(frutas["banana"]) # Salida: "amarillo"
```

# Modificación de Diccionarios

Puedes añadir nuevos pares clave-valor o actualizar los existentes:

```python
# Añadir un nuevo par clave-valor
frutas["pera"] = "verde"
print(frutas) # Salida: {"manzana": "rojo", "banana": "amarillo", "cereza": "rojo", "pera": "verde"}

# Actualizar un valor existente
frutas["manzana"] = "verde"
print(frutas) # Salida: {"manzana": "verde", "banana": "amarillo", "cereza": "rojo", "pera": "verde"}
```

# Comparación con Listas

Los diccionarios y las listas son similares en algunos aspectos, pero tienen diferencias clave:

- **Estructura**: Las listas son colecciones ordenadas de elementos, mientras que los diccionarios son colecciones desordenadas de pares clave-valor.

- **Uso**: Los diccionarios son más adecuados para búsquedas rápidas utilizando claves, mientras que las listas son mejores para secuencias ordenadas de elementos.

# Jupyter Contenido

{% file src="../Jupyters/05-diccionarios.ipynb" %}
Descarga este Jupyter y ábrelo en VS Code.
{% endfile %}

# Videos

#### Definición e Indexación de Diccionarios
<div align="center">
  <a href="https://vimeo.com/927620481/73343170b2?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Definición e Indexación de diccionarios" />
  </a>
</div>

#### Métodos de Diccionarios
<div align="center">
  <a href="https://vimeo.com/927662512/2fb73f0b02?share=copy">
    <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="Métodos diccionarios" />
  </a>
</div>

