# Tarea: Modelo dimensional y Base de datos

# Introducción

**Objetivo**

Comprender la relación entre un modelo dimensional y su representación en un modelo relacional, lo que se denomina modelo ROLAP. Adicionalmente, fortalecer la competencia de modelar multidimensionalmente a partir de un caso dado.

**¿Para qué?**

Practicar lo aprendido en el tutorial de modelado de datos y SQL y retomar el lenguaje SQL a nivel de creación de objetivos (DDL - _Data Definition Language_ y DML- _Data Manipulation Language_).

**¿Qué necesita?**

1. MySQL Workbench
2. Modelo multidimensional asociado al proceso de movimientos
3. Acceso al servidor de base de datos 
4. Script SQL de [creación de tablas](scriptTarea.sql)

# Enunciado
Ahora que sabe cómo crear modelos multidimensionales y hacer sentencias básicas con SQL, lo que debe hacer en la primera parte de esta tarea, es practicar la competencia de modelar con **un caso diferente al de Wide World Importers (WWI)**. En la segunda parte, vas a crear en una base de datos relacional las tablas que representan el modelo multidimensional compartido de Wide World Importers (WWI), poblarlas y consultarlas. A continuación encuentras el detalle de las actividades a realizar:  

**1. MODELO MULTIDIMENSIONAL**: Proponga un modelo multidimensional para el siguiente caso, incluya detalles del modelo como el nivel de granularidad y aclaraciones que considere importantes, como parte de la entrega del mismo. Esta parte **NO** incluye la creación de tablas ni su población y el tema es distinto al del punto 2.

**MovilidadALPES** 

La secretaria de movilidad de los Alpes como cabeza del sector Movilidad y autoridad de tránsito y transporte, presta servicios, planea y formula las políticas del sector, generando condiciones de movilidad acordes con las necesidades de la población de Bogotá D. C, … -- Documento sobre la misión de la entidad. Uno de sus objetivos es aumentar la cobertura y efectividad de la presencia en vía y una de las metas que persigue es la reducción de accidentes con muertos.

Asociado a un siniestro se tiene una descripción del mismo que incluye: Fecha,  dirección, causa (exceso de velocidad, alcoholemia, etc.), gravedad (solo daños, con heridos, con muertos) y características del entorno. El entorno hace referencia a elementos como si la vía estaba lisa – porque había llovido, si había cerca un hueco, si es muy oscuro el lugar, entre otros. Con respecto a ese entorno se registra la característica principal y una secundaria. Adicionalmente, se registra información de los actores involucrados en el mismo, de los cuales se tiene el tipo de documento, número de documento, edad, sexo, tipo de actor (peatón, ciclista, motociclista, pasajero o conductor de carro), y el estado (herido valorado, herido hospitalizado, muerto), y el vehículo asociado, del cual se tiene la placa, la marca (Renault, Mazda, etc.), la clase (automóvil, bus, buseta, motocicleta) y el servicio (público colectivo, público individual, privado, diplomático). De cada actor/vehículo, involucrado en el siniestro, el policía de tránsito asigna una calificación del nivel de daños humanos y materiales entre 1 y 10, siendo 10 el puntaje más alto del daño y un valor estimado de daños materiales.

Cuando se habla de analizar los siniestros, los expertos en seguridad vial identifican tres perspectivas de análisis: actores involucrados, infraestructura y entorno. La infraestructura corresponde al lugar donde ocurre el accidente y a sus características. Esta información contiene la dirección exacta, la localidad (e.g., Usaquén, chapinero), la Unidad de Planeamiento Zonal (UPZ – área urbana más pequeña que una localidad), y la Zona de Análisis de Transporte (ZAT). Una localidad está compuesta por varias UPZ y una UPZ está compuesta por varias ZAT.

La Secretaría desea identificar causas de diferentes tipos de siniestros, con el fin de formular políticas que lleven a la reducción de los mismos. En particular se hace preguntas del estilo: ¿Cuáles son las principales causas de los siniestros que ocurren en horas de la noche, donde hay por lo menos una motocicleta involucrada?,¿Qué tipos de actores están involucrados en más siniestros? ¿Cuáles son los actores que más muertes han registrado en los últimos años en siniestros? ¿Cuáles son los días de la semana y horas en los que se producen más siniestros y las características de los mismos? ¿Qué vehículos están más involucrados en siniestros y qué características tienen? ¿Hay marcas de carros que están involucradas en mayor número de siniestros?


**2. MODELO ROLAP CASO MOVIMIENTOS WWImporters**: A partir del requerimiento analítico, modelo multidimensional y sentencias de creación de tablas que se dan como insumo para esta tarea, prepare los siguientes entregables.
Es importante que mantenga las tablas creadas para que los tutores puedan validar las consultas en el momento de calificar su tarea.

-	**Entregable CREATE**: Defina las sentencias para crear las tablas de **cliente** y **movimiento** de acuerdo con el modelo multidimensional que se comparte.
-	**Entregable INSERT**: Defina las sentencias para la inserción de 5 registros en todas las tablas del modelo multidimensional de **movimientos**.
-	**Entregable SELECT**: Defina las sentencias para consultar los datos de manera que le permita resolver el requerimiento analítico sobre **movimientos**. 
-	**Entregable EJECUTAR**: Ejecute las sentencias para crear, insertar y consultar la base de datos que refleje el modelo multidimensional dado y muestre los resultados obtenidos.

| **Tema analítico**                                               | **Análisis requeridos o inferidos**                                                                                                       | **Categoría del análisis (\*)** | **Procesos de negocio** | **Fuentes de datos**                                                    |
| ---------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------- | ----------------------- | ----------------------------------------------------------------------- |
| **Movimientos en el inventario de WWI** | Visualizar el número de productos que se movieron en el inventario en un rango de fechas por cliente, proveedor, y/o tipo de transacción | Consultas SQL             | Inventario                  | Movimientos, Tipos de transacción, Proveedores, Clientes y Productos  |

![Modelo moimientos](Img/Modelo%20movimiento.png)

### Herramientas de modelado online:
- LucidChart: https://www.lucidchart.com/pages/es
- GenMyModel: https://www.genmymodel.com/

### Recuerde:
- En estos modelos multidimensionales se debe identificar claramente la tabla de hechos
- Revise los errores frecuentes dados en videos de la semana y valide que su modelo no los tenga
- No olviden la dimensión Fecha
- En la segunda parte, mostrar evidencia de los resultados obtenidos
- Incluir las llaves foráneas a nivel de la tabla de hechos
