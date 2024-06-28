---
description: >-
    Aprenderemos a crear y gestionar ramas en Git incluye comandos para crear, mover, listar, eliminar y fusionar ramas, facilitando el trabajo con diferentes versiones del código.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>

# Introducción

Una rama es una línea de desarrollo independiente. Podemos pensar en una rama como una versión paralela del código que evoluciona separadamente de la línea principal (conocida como la rama `main` o `master`). Cada rama puede contener sus propios cambios, commits y historial, lo que permite a los desarrolladores trabajar en diferentes características o correcciones de manera aislada.

**¿Por qué son útiles las ramas en git?**

- Desarrollo de nuevas funcionalidades: Las ramas permiten a los desarrolladores trabajar en nuevas características sin afectar el código estable en la rama principal. Una vez que la nueva funcionalidad está completa y probada, se puede fusionar de nuevo en la rama principal.

- Corrección de errores: Las ramas también son útiles para corregir errores. Puedes crear una rama específica para solucionar un bug, realizar los cambios necesarios y luego fusionar esos cambios en la rama principal una vez que estén probados.

- Trabajo en paralelo: Las ramas permiten a múltiples desarrolladores trabajar en paralelo sin interferir entre sí. Cada desarrollador puede trabajar en su propia rama y luego fusionar sus cambios cuando estén listos.

- Historial limpio y organizado: Mantener diferentes líneas de desarrollo en ramas separadas ayuda a mantener el historial de commits organizado y claro. Esto facilita la revisión del historial de cambios y la identificación de problemas.

- Experimentación y prototipos: Las ramas permiten a los desarrolladores experimentar con nuevas ideas o prototipos sin riesgo de romper el código principal. Si el experimento no funciona, simplemente se descarta la rama sin afectar el resto del proyecto.


# Crear Nueva Rama Local

Para crear una rama nueva en nuestro repositorio de Git deberemos usar el comando `git branch`
```bash
git branch nombre-de-la-rama
# reemplaza **`nombre-de-la-rama`** con el nombre que deseas para tu nueva rama.
```

Una vez que hemos creado la rama, nos podremos mover a la rama, cambiando la rama de trabajo actual a otra rama existente. Para eso deberemos usar el siguiente comando:

```bash
git checkout nombre-de-la-rama
```

También podemos crear una rama y cambiar la rama de trabajo con una sola línea en la terminal, para eso deberemos escribir: 

```bash
git checkout -b nombre-de-la-rama
```


# Consultar el Listado de Ramas Disponibles

Para mostrar todas las ramas existentes en el repositorio local deberemos:

```bash
git branch
```

La rama actual estará marcada con un asterisco.

# Eliminar una Rama

En ocasiones podemos estar interesados en eliminar una rama de nuestro repositorio usando el comando `git branch -d`

```bash
git branch -d nombre-de-la-rama
```

**NOTAS**:
- Ten en cuenta que no puedes estar en la rama que estás tratando de eliminar.

- Si la rama tiene cambios que no se han fusionado, Git te advertirá. Usa **`D`** en lugar de **`d`** para forzar la eliminación.

# Fusionar una Rama

Fusionar una rama en Git es el proceso de integrar los cambios realizados en una rama (la rama de origen) en otra rama (la rama de destino). Esto combina los historiales de ambas ramas, incorporando los *commits* de la rama de origen en la rama de destino.

**¿Por qué es necesario fusionar ramas?**

1. **Integración de funcionalidades**: Cuando desarrollamos una nueva funcionalidad en una rama separada, necesitamos fusionarla con la rama principal para que los cambios sean parte del proyecto principal y estén disponibles para todos los usuarios y desarrolladores.

2. **Corrección de errores**: Al solucionar un *bug* en una rama de corrección, fusionar esos cambios en la rama principal asegura que la corrección esté incluida en el código base principal.

3. **Colaboración**: En un entorno de trabajo en equipo, cada desarrollador puede trabajar en su propia rama. Fusionar sus ramas en la rama principal permite integrar los aportes de todos en una versión unificada del proyecto.

4. **Mantener la historia de desarrollo**: Fusionar ramas preserva el historial de commits de las ramas involucradas, proporcionando un registro claro de cómo evolucionó el proyecto. Esto es crucial para el seguimiento de cambios y la resolución de problemas.

## Cómo Fusionar una Rama en Git

- **Cambiar a la rama de destino**: Debemos asegurarnos de estar en la rama en la que deseas integrar los cambios (por ejemplo, `main`):

     ```bash
     git checkout main
     ```

- **Fusionar la rama de origen**: Fusionamos los cambios de la rama de origen (por ejemplo, `feature-branch`) en la rama de destino:

     ```bash
     git merge feature-branch
     ```

# Videos

#### Video Ramas

<div align="center">
<a href="https://vimeo.com/919094603/495ae0562b?share=copy">
<img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/Cabecera%20video%20Gitbook%20Hackio.png?raw=true" alt="homebrew" style="display: block; margin-left: auto; margin-right: auto;" />
</a>
</div>