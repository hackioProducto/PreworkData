---
description: >-
  Empecemos con Python, en este apartado hablaremos de las buenas prácticas a la hora de programar en Python. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="logo hack(io)" />
</div>

# Buenas prácticas

Todo programador de Python tiene una guía de buenas prácticas, esta se llama PEP8  y esta formada por una serie de reglas  de estilo para escribir código en Python. Es decir, se trata de una serie de pautas para que el código sea más legible y siga una organización generalizada. 

> *El código se lee con mucha más frecuencia de la que se escribe*. 
*Guido van Rossum*
> 

Las principales pautas del PEP8 son:

- *Bonito es mejor que feo.*
- *Explícito es mejor que implícito.*
- *Simple es mejor que complejo.*
- *Complejo es mejor que complicado.*
- *Plano es mejor que anidado.*
- *Espaciado es mejor que denso.*
- *La legibilidad es importante.*
- *Los casos especiales no son lo suficientemente especiales como para romper las reglas.*
- *La practicidad le gana a la pureza.*
- *Los errores nunca deberían pasar silenciosamente.*
- *A menos que se silencien explícitamente.*
- *Frente a la ambigüedad, evitar la tentación de adivinar.*
- *Debería haber una, y preferiblemente solo una, manera obvia de hacerlo.*
- *A pesar de que eso no sea obvio al principio, a menos que seas Holandés.*
- *Ahora es mejor que nunca. A pesar de que nunca es muchas veces, mejor ahora mismo.*
- *Si la implementación es difícil de explicar, es una mala idea.*
- *Si la implementación es fácil de explicar, puede que sea una buena idea.*

# Nombre variables

En Python, la elección de nombres de variables es una parte crucial del proceso de desarrollo de software. Los nombres de variables deben ser descriptivos, concisos y seguir las convenciones de estilo para hacer que el código sea más legible y mantenible. Aquí hay algunas buenas prácticas a considerar al definir nombres de variables en Python:

1. **Utiliza nombres descriptivos**: Los nombres de variables deben reflejar claramente su propósito y significado en el contexto del programa. Por ejemplo, en lugar de usar nombres genéricos como **`x`** o **`y`**, elige nombres más descriptivos como **`edad`**, **`nombre_usuario`**, **`contador_intentos`**, etc.
2. **Sigue las convenciones de estilo**: En Python, se recomienda seguir las PEP 8, que son las guías de estilo para el código Python. Esto incluye el uso de minúsculas y guiones bajos para separar palabras en nombres de variables, como en **`nombre_completo`**, **`temperatura_actual`**, **`saldo_cuenta`**, etc.
3. **Evita nombres demasiado largos**: Si bien es importante que los nombres de variables sean descriptivos, también es importante no excederse con la longitud de los nombres. Nombres excesivamente largos pueden dificultar la lectura del código. Es importante encontrar un equilibrio entre la claridad y la concisión.
4. **Usa nombres coherentes y consistentes**: Mantén una convención de nomenclatura consistente en todo el código para facilitar la comprensión. Por ejemplo, si usas **`nombre_completo`** en un lugar, no lo cambies a **`nombre_persona`** en otro lugar para referirte a la misma variable.
5. **Evita palabras reservadas y nombres predefinidos**: No uses palabras reservadas de Python (como **`if`**, **`for`**, **`while`**, etc.) como nombres de variables. Del mismo modo, evita usar nombres predefinidos de Python (como **`list`**, **`str`**, **`int`**, etc.) para evitar confusiones y posibles errores.
6. **Considera el contexto**: Ten en cuenta el contexto en el que se utilizará la variable al elegir su nombre. Por ejemplo, si estás trabajando en un programa relacionado con finanzas, es posible que nombres como **`precio`**, **`saldo`**, **`monto`**, tengan más sentido que en otros contextos.

Siguiendo estas buenas prácticas al definir nombres de variables en Python, podremos escribir código más legible, comprensible y mantenible, lo que facilitará la colaboración con otros programadores y la resolución de problemas en el futuro.

# Comentarios y Documentación

Los comentarios son esenciales cuando trabajamos como programadores ya que van a ayudar a entender lo que está haciendo cada línea, para que otros puedan seguir los pasos que hemos seguido y para que nuestro yo del futuro dedique menos tiempo en entender cada paso. Es especialmente importante comentar cualquier parte del código que sea difícil de entender o que haga algo inesperado. Los comentarios aparecerán en un color diferente y no se ejecutaran. Tenemos varias formas de insertar comentarios dentro de nuestro código:

- Mediante hashtag (#) y un espacio a continuación para hacer comentarios en línea:
    
    ```python
    # Esto es un comentario de una línea
    ```
    
- Mediante  tres comillas dobles/simples (”““ COMENTARIO “””  o  ‘’’ COMENTARIO ‘’’) al principio del comentario y al final  para hacer cadenas de documentación de varias líneas:
    
    ```python
    """
    Esto es un comentario,
    para una cadena de documentación 
    """
    
    '''
    También podemos hacerlo, si queremos,
    con comillas simples
    ''' 
    ```
    

Por otro lado, utilizar espacios en blanco puede hacer que nuestro código  sea más fácil de leer. Por ejemplo, debemos utilizar espacios en blanco alrededor de los operadores y después de las comas en las listas y tuplas o después de los nombres de las variables. 

```python
# la siguiente forma no es correcta:
precio=17.99

# la forma correcta sería la siguiente, dejando espacios a ambos lados del igual:
precio = 17.99
```

Por último, tenemos la **indentación** la cual hace referencia al espaciado o sangrado que se utiliza para organizar visualmente el código. La indentación se utiliza para estructurar y hacer más legible el código, facilitando su comprensión tanto para el programador como para otros colaboradores que puedan revisarlo en el futuro. Al seguir un estilo de indentación consistente, podemos delinear claramente bloques de código, como funciones, bucles, condicionales y estructuras de control que veremos en próximas lecciones.

Es importante saber que en Python, la indentación es parte de la sintaxis y afecta la estructura y ejecución del código. Un mal uso de la indentación puede resultar en errores de sintaxis o en un comportamiento inesperado del programa.
