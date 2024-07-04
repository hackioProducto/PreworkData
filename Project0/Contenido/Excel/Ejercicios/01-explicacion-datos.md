---
description: >-
   En este apartado tendréis el enunciado de los ejercicios de Excel y la descripción del conjunto de datos que usaremos para prácticar. 
---

<div style="text-align: center;">
  <img src="https://github.com/Hack-io-Data/Imagenes/blob/main/01-LogosHackio/logo_celeste@4x.png?raw=true" alt="esquema" />
</div>


# Descripción General

Este conjunto de datos ha sido generado para simular las operaciones diarias de un restaurante ubicado en el aeropuerto Adolfo Suárez de Madrid, cubriendo una semana completa de actividad desde el 1 de abril hasta el 7 de abril de 2023. Los datos reflejan diversas interacciones y transacciones en el restaurante, incluyendo detalles sobre los clientes, órdenes, platos servidos y las interacciones financieras asociadas.

# Estructura del Conjunto de Datos
El conjunto de datos se divide en dos partes principales:

- `sala_df`: Datos de la sala del restaurante.

- `cocina_df`: Datos de la cocina.

## sala_df

Esta tabla incluye las siguientes columnas:

- `Número de Mesa`: Número de la mesa asignada al cliente.

- `Nombre del Cliente`: Nombre del cliente, generado aleatoriamente como "Cliente_X".

- `Número de Comensales`: Número de comensales en la mesa.

- `Hora de Llegada`: Hora a la que los clientes llegan al restaurante.

- `Hora de Salida`: Hora a la que los clientes dejan el restaurante.

- `Mesero Asignado`: Nombre del mesero asignado a la mesa.

- `Tipo de Servicio`: Tipo de servicio (Desayuno, Almuerzo, Cena). El restaurante ofrece distintos tipos de menu que se ajustan a cada uno de los viajeros en funcion de su lugar de origen. 

- `Método de Pago`: Método de pago utilizado (Efectivo, Tarjeta de crédito, Tarjeta de débito).

- `Propina`: Cantidad de propina dejada por los clientes.

- `Estado de la Mesa`: Estado de la mesa a la llegada de un cliente (Libre, Ocupada, Reservada). Si en el registro aparece Ocupada el cliente tendra un tiempo medio de espera de 15 min. 

- `Número de Orden`: Número único de la orden asociada con la mesa.

- `País de Origen`: País de origen del cliente.

- `Monto Total de la Cuenta`: Monto total pagado por los platos ordenados.

- `Platos Ordenados`: Lista de platos ordenados durante la visita, extraídos de cocina_df.

## cocina_df

Esta tabla incluye las siguientes columnas:

- `Número de Orden`: Correlaciona directamente con el "Número de Orden" en sala_df.

- `Número de Mesa`: Número de mesa asociado con la orden.

- `Nombre del Plato`: Nombre del plato ordenado.

- `Descripción del Plato`: Descripción breve del plato.

- `Costo Unitario`: Costo de producción del plato.

- `Precio Unitario`: Precio al que se vende el plato.

- `Cantidad Ordenada`: Número de unidades del plato ordenadas.

- `Tiempo de Preparación`: Tiempo necesario para preparar el plato.

- `Estado de la Orden`: Estado actual de la orden (Pendiente, En Preparación, Lista).

- `Observaciones`: Observaciones especiales o requerimientos (ej., "Sin cebolla").

- `Total del Pedido`: Total pagado por este plato específico.

- `Ganancia Neta`: Ganancia neta obtenida de este plato.

- `Ganancia Bruta`: Ingresos brutos de este plato.

- `Porcentaje de Ganancia`: Porcentaje de ganancia sobre el costo.

