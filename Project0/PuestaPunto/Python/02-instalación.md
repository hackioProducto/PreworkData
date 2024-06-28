---
description: >-
  Los alumnos aprenderán a instalar Python y pip en macOS y Windows, verificar la instalación y gestionar paquetes con pip.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>

# Instalación

## Instalación en MacOS

Para instalar Python en Mac sigue los siguientes pasos: 

- Abre la terminal en Mac.

- Escribe el siguiente comando y ejecútalo.
    
    ```bash
    brew install python3
    ```
    
- Para confirmar que la instalación de Python se ejecutó correctamente escribe el siguiente mensaje en la terminal:
    
    ```bash
    python --version
    
    # en caso de que te de error prueba con:
    python3 --version
    ```
    
- Además de Python vamos a instalar pip. Es un sistema de gestión de paquetes en Python. Permite a los usuarios instalar, actualizar y gestionar bibliotecas y herramientas adicionales fácilmente. Para instalarlo deberemos escribir en la terminal el siguiente comando:
    
    ```bash
    pip3 install --upgrade --user pip
    ```
    
- Puede que después de este paso salga un mensaje en la terminal similar al que vemos a continuación. No pasa nada, es una simple advertencia, pero todo debería haber ido bien.
        
    ![Captura de pantalla 2024-01-30 a las 15.52.06.png](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Python/error-instalacion-python-mac.png?raw=true)
        
- Para confirmar que la instalación ha sido correcta escribe en la terminal:
    
    ```bash
    pip3 --version
    ```
    
- Si todo ha ido correctamente deberá aparecer en la terminal un mensaje similar a este:

    ```bash
    pip 22.3.1 from /opt/homebrew/Caskroom/miniconda/base/lib/python3.10/site-packages/pip (python 3.10)
    ```

## Instalación en Windows

Para instalar Python en Windows, sigue los siguientes pasos:

- Descarga el instalador de la [página oficial](https://www.python.org/downloads/) de Python.

- Ejecuta el ejecutable descargado.

- Selecciona la opción “Agregar Python 3.x a PATH” y haz clic en “Personalizar instalación”.

- Selecciona las opciones que deseas instalar y haz clic en “Siguiente”.

- Haz clic en “Instalar” para comenzar la instalación.

- Espera a que se complete la instalación.

- Para confirmar que la instalación se ejecutó correctamente, abre la terminal y escribe:

    ```bash
    python --version

    # en caso de que te de error prueba con:
    python3 --version
    ```