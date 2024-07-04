---
description: >-
   En este apartado tendréis el enunciado de los ejercicios de Excel y la descripción del conjunto de datos que usaremos para prácticar. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# El problema 

El restaurante gourmet del aeropuerto ha detectado un incremento inusual en las reclamaciones desde hace una semana. Este hecho ha supuesto grandes pérdidas ya que algunos clientes no llegan a disfrutar de los platos pedidos, marchándose sin pagar la cuenta. Tu objetivo es: 

- Identificar las órdenes que se han ido sin haber pagado y edita todos los registros necesarios para mantener la consistencia de los resultados.

- Modificar todos los registros y columnas necesarios para mantener la consistencia de los datos.

- Eliminar las columnas redundantes.

- Asegúrate de que tanto el nombre de las columnas como el contenido de las mismas sean claros y legibles.

# Funciones

Para este ejercicio es posible que tengas que volver sobre tus pasos para asegurar la consistencia de los datos del cliente. Fíjate bien en el enunciado y sé todo lo meticuloso que puedas.

## Para el conjunto de datos de cocina

- Crea columna 'Ganancia Neta' derivada de cada plato de la comandad. 

- Crea columna 'Ganancia Bruta'derivada de cada plato de la comandad. 

- Crea columna 'Porcentaje de Ganancia': Determinar el porcentaje de ganancia calculando la relación entre la 'Ganancia Neta' y el 'Total del Pedido'.

## Para el conjunto de datos de sala

- Crea una columna 'Monto Total de la Cuenta' correspondiente a una orden para obtener el total facturado al cliente. 

- Crea una columna 'Fecha de Factura' Para registrar la fecha en que se generó la factura.

- Crea una columna 'Hora de Llegada' y 'Hora de Salida'. Estas columnas deben contener el número de horas y minutos específicos en que los clientes llegan y salen del restaurante. 

- Crea una columna 'Tiempo de Permanencia': Que refleje el tiempo de estancia de los clientes en el restaurante, expresada en horas y minutos. Si un registro aparece en la columna "Estado de la Mesa" como "Ocupada", el cliente tendrá un tiempo medio de espera de 15 minutos, por lo que se le sumará al resultado final de aquellos clientes con ese estado en su tiempo de permanencia.

- Crea una columna 'Tiempo de Preparación (Horas)'. Esta columna debería reflejar el tiempo total necesario para preparar todos los platos incluidos en una orden específica. 

- Crea una columna 'Tiempo de Degustación (Horas)': Esta columna debería reflejar el tiempo total de todos los comensales en ingerir una orden y deberá expresarse en horas y minutos. recuerda que si sale un número negativo se deberá poner un 0.

-  Crea una columna que refleje si una orden fue cobrada o no. Recuerda que si el tiempo de degustación es 0, la cuenta no fue cobrada.

# Tablas Dinámicas y Visualización

Crea una nueva hoja en la que tendrás que generar todas las tablas dinámicas requeridas y elige la mejor visualización para cada una de ellas.

- Tabla 1: Análisis de Ingresos por Tipo de Servicio


-  Tabla 2: Análisis de número de transacciones por Método de Pago



-  Tabla 3: Desglose de Ingresos tipo de Servicio y día de la Semana


- Tabla 4: Desglose de Ingresos por País de Origen



- Tabla 5: Desglose de Impagos



- Ejercicio 6: Desglose de Propinas




- Ejercicio 7: Desglose de Órdenes Atendidas por meseros. 


# Resumen de Resultados

Crea una nueva hoja en la que tendrás que resumir todos y cada uno de los gráficos generados hasta el momento en un dashboard. Además, tendrás que calcular `Número Total de Órdenes`, `Nº Medio Comensales`, `Ticket Medio`, `Facturación Total`, `Coste Total` y `Margen`.

> Nota: Recuerda que se valorará positivamente cualquier tipo de *insight* adicional que aporte valor al análisis.

# Los Datos

{% file src="Archivos/cocina.csv" %}
Descarga este Fichero y ábrelo en Excel para poder practicar.
{% endfile %}

{% file src="Archivos/sala.csv" %}
Descarga este Fichero y ábrelo en Excel para poder practicar.
{% endfile %}