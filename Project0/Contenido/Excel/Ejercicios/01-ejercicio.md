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

- Crea una columna 'Total del Pedido': Esta columna debe calcularse multiplicando el 'Precio Unitario' por la 'Cantidad Ordenada' de cada plato.

- Crea columna 'Ganancia Neta': Calcular la ganancia neta restando el 'Costo Unitario' multiplicado por la 'Cantidad Ordenada' del 'Total del Pedido'.

- Crea columna 'Ganancia Bruta': Esta columna representará el ingreso total obtenido de cada plato antes de deducir costos, equivalente al 'Total del Pedido'.

- Crea columna 'Porcentaje de Ganancia': Determinar el porcentaje de ganancia calculando la relación entre la 'Ganancia Neta' y el 'Total del Pedido', multiplicado por 100 para obtener un porcentaje.

## Para el conjunto de datos de sala

- Crea una columna 'Monto Total de la Cuenta': Sumar todos los 'Totales del Pedido' correspondientes a una orden para obtener el total facturado al cliente. **Hint: deberías tener en cuenta los valores de la hoja Cocina**.

- Crea una columna 'Fecha de Factura': Registrar la fecha en que se generó la factura.

- Crea una columna 'Hora de Llegada' y 'Hora de Salida': Estas columnas deben contener el número de horas y minutos específicos en que los clientes llegan y salen del restaurante. **Hint: es cuestión de formatear las columnas**.

- Crea una  columna 'Tiempo de Permanencia': Calcular la duración de la estancia de los clientes en el restaurante, expresada en horas y minutos. Si un registro aparece en la columna "Estado de la Mesa" como "Ocupada", el cliente tendrá un tiempo medio de espera de 15 minutos, por lo que se le sumará al resultado final de aquellos clientes con ese estado en su tiempo de permanencia. **Hint: restando la 'Hora de Salida' de la 'Hora de Llegada'**.

- Crea una columna 'Tiempo de Preparación (Horas)': Este campo debería reflejar el tiempo total necesario para preparar todos los platos incluidos en una orden específica. **Hint: calcular el tiempo de preparación de una orden completa**.

- Crea una columna 'Tiempo de Degustación (Horas)': Este campo debería reflejar el tiempo total de todos los comensales en ingerir una orden y deberá expresarse en horas y minutos. **Hint: si sale un número negativo se deberá poner un 0**.

# Tablas Dinámicas y Visualización

Crea una nueva hoja en la que tendrás que generar todas las tablas dinámicas requeridas y elige la mejor visualización para cada una de ellas.

- Tabla 1: Análisis de Ingresos por Tipo de Servicio

    - Filas: Tipo de Servicio

    - Valores: Monto Total de la Cuenta (configurado como suma)


-  Tabla 2: Análisis de número de transacciones por Método de Pago

    - Filas: Método de Pago 

    - Valores: Número de Órdenes (configurado como suma)


-  Tabla 3: Desglose de Ingresos por Día de la Semana

    - Columnas: Tipo de Servicio

    - Filas: Día de la semana

    - Valores: Monto Total de la Cuenta (configurado como suma)

- Tabla 4: Desglose de Ingresos por País de Origen

    - Filas: País de Origen

    - Valores: Monto Total de la Cuenta (configurado como promedio)


- Tabla 5: Desglose de Impagos

    - Filas: Cobrado

    - Valores: Cobrado (configurado como suma)

- Ejercicio 6: Desglose de Propinas

    - Columnas: Tipo de Servicio

    - Filas: Mesero Asignado

    - Valores: Propina (configurado como suma)


- Ejercicio 7: Desglose de Órdenes Atendidas

    - Columnas: Cobrado

    - Filas: Mesero Asignado

    - Valores: Número de Orden (configurado como % del total general)



# Resumen de Resultados

Crea una nueva hoja en la que tendrás que resumir todos y cada uno de los gráficos generados hasta el momento en un dashboard. Además, tendrás que calcular `Número Total de Órdenes`, `Nº Medio Comensales`, `Ticket Medio`, `Facturación Total`, `Coste Total` y `Margen`.

> Nota: Recuerda que se valorará positivamente cualquier tipo de *insight* adicional que aporte valor al análisis.
