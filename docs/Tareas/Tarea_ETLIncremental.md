# Tarea: Construir un ETL incremental

# Introducción

**Objetivo**

Reflexionar y practicar sobre un proceso ETL incremental con historia en atributos de dimensiones en Pyspark

**¿Para qué?**

Dentro  de  procesos  de  ETL,  es común  que se  presenten  dimensiones que puedan  presentar cambios a través del tiempo para las cuales es necesario tener un plan de manejo de historia. Por lo tanto, es esencial saber cómo realizar este manejo en las distintas herramientas de ETLs, de igual manera ser conscientes que estos procesos ocurren en la mayoría de casos cuando la bodega de datos ya tiene información cargada. De esta manera van a reflexionar y practicar sobre lo aprendido en el tutorial de ETL utilizando técnicas de manejo de historia de los datos

**¿Qué necesita?**

1. Modelo multidimensional asociado al proceso movimientos de inventario.

![Modelo movimientos](Img/Modelo%20movimiento.png)

2. Tutorial ETL Incremental 
3. Notebook para trabajar: puede usar la seccion 3 "Espacio para desarrollar la tarea" al final del notebook del tutorial para realizar esta actividad
4. Servidor SQL con la bodega de datos construida hasta el momento "WWImporters_DWH_solucion" (Esta base de datos estará disponible luego de entregar la tarea de ETL), en esta base de datos el hecho está en la versión del ETL inicial. Adicionalmente, recuerde que tiene acceso a la base de datos relacional "WWImportersTransactional" y la base de datos relacional que ha ido construyendo (corresponde a la bodega de WWI "Estudiante_i" con los datos cargados de ETL)
5. Archivos sql con los datos listos para cargue a bodega de datos en caso de requerirlo [aquí](https://github.com/MISW-4402-Analisis-y-Modelado-de-datos/guias/blob/main/docs/Tareas/wwImporters_DWH_solucion.sql) (debe abrirlo utilizando la opción de Data Import en Server de MySQL Workbench) (Estará disponible luego de entregar la tarea de ETL)

# Enunciado
Ahora que sabe cómo realizar un proceso ETL con manejo de historia, dado el modelo multidimensional del proceso de negocio de **movimientos de inventario**, debe enfrentar el reto de tener ciudades de los clientes que cambian en el tiempo, es decir clientes que cambian de ciudad donde se entregan sus pedidos, y que el negocio reporta de  diferentes maneras desde la base transaccional, que llamaremos escenarios. A partir de esto, reflexione sobre:
1. **Práctica 1 - Modelo multidimensional:** Identifique cuáles técnicas de manejo de historia se podrían usar y actualice el modelo multimensional con base en el tipo de manejo que considere apropiado para el tema (justifique su respuesta)
2. **Práctica 2 - Diseño del ETL:** Reflexione sobre los ajustes requeridos en el diseño del ETL de manera que se incluya el manejo de historia que propuso para el modelo multidimensional
3. **Práctica 3 - Implementación del ETL con historia:** Implemente los cambios al ETL de manera que incluya el manejo de historia que propuso

Recuerde que esta actividad es **formativa**, es decir no tendra entregable ni nota. Es una práctica que le permitirá entender lo que se requiere para realizar un ETL incremental con historia y prepararse para el momento de aplicarlo al proyecto.

WWImporters generó dos formas distintas de reportar los datos de los clientes:
- **Escenario 1.** Envían la información de todos los clientes con o sin cambios
- **Escenario 2.** Envían la última versión reportada a la bodega de datos del cliente, y la versión actual, para los clientes que tuvieron algún cambio desde el último reporte hecho a la bodega.

Practique con uno de los escenarios propuestos. Las tablas con la información para cada escenario se llaman ClientesReporte2_Escenario1 y ClientesReporte2_Escenario2 que se encuentran en la base de datos WWImportersTransactional. Adicionalmente, reflexione sobre el impacto, a nivel de la tabla de hechos, de tener movimientos de inventario del segundo semestre del 2016.

Como resultado de esta actividad debe publicar en el foro respectivo, dudas del proceso, que serán discutidas en las sesiones sincrónicas de esta semana.

**Preguntas ejemplo:**

**1. ¿Cómo luce el nuevo modelo multidimensional si se requiere tipo 4?** 
