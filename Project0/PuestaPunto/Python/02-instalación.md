---
description: >-
  Aquí aprederemos a instalar Python y pip en macOS y Windows, verificar la instalación y gestionar paquetes con pip.
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>

# Instalación

## Instalación en MacOS

Para instalar Python en Mac seguiremos los siguientes pasos: 

- Abrimos la terminal en Mac.

- Escribimos el siguiente comando y lo ejecutamos.
    
    ```bash
    brew install python3
    ```
    
- Para confirmar que la instalación de Python se ejecutó correctamente escribimos el siguiente mensaje en la terminal:
    
    ```bash
    python --version
    
    # en caso de que nos dé error probaremos con:
    python3 --version
    ```
    
- Además de Python vamos a instalar pip. Es un sistema de gestión de paquetes en Python. Permite a los usuarios instalar, actualizar y gestionar bibliotecas y herramientas adicionales fácilmente. Para instalarlo deberemos escribir en la terminal el siguiente comando:
    
    ```bash
    pip3 install --upgrade --user pip
    ```
    
- Puede que después de este paso salga un mensaje en la terminal similar al que vemos a continuación. No pasa nada, es una simple advertencia, pero todo debería haber ido bien.
        
    ![Aviso instalación pip](https://github.com/Hack-io-Data/Imagenes/blob/main/04-Prework/Python/error-instalacion-python-mac.png?raw=true)
        
- Para confirmar que la instalación ha sido correcta escribimos en la terminal:
    
    ```bash
    pip3 --version
    ```
    
- Si todo ha ido correctamente deberá aparecer en la terminal un mensaje similar a este:

    ```bash
    pip 22.3.1 from /opt/homebrew/Caskroom/miniconda/base/lib/python3.10/site-packages/pip (python 3.10)
    ```

## Instalación en Windows

Para instalar Python en Windows, seguiremos los siguientes pasos:

- Descargamos el instalador de la [página oficial](https://www.python.org/downloads/) de Python.

- Ejecutamos el archivo descargado.

- Seleccionamos la opción “Agregar Python 3.x a PATH” y hacemos clic en “Personalizar instalación”.

- Seleccionamos las opciones que deseamos instalar y hacemos clic en “Siguiente”.

- Hacemos clic en “Instalar” para comenzar la instalación.

- Esperamos a que se complete la instalación.

- Para confirmar que la instalación se ejecutó correctamente, abrimos la terminal y escribimos:

    ```bash
    python --version

    # en caso de que nos dé error, probaremos con:
    python3 --version
    ```