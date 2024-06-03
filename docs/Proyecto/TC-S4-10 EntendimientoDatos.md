# **Entendimiento de datos**
## **Objetivo**
- Explorar y analizar fuentes de datos (perfilamiento de datos) relacionadas con el proyecto del curso. 
- Inspeccionar el nivel de calidad de las fuentes de datos provistas.
- Revisar la viabilidad de implementar análisis con fuentes de datos dadas.
## **Instrucciones**

![](https://github.com/MISW-4402-Analisis-y-Modelado-de-datos/guias/blob/main/docs/Proyecto/Img/S210InfrestructuraVisible.png)

Infraestructura visible de forma conjunta con un grupo de consultores de inteligencia de negocios, ha trabajado en una especificación de los primeros análisis que quiere que usted realice. En esta primera fase, a partir de estos análisis propuestos, la empresa le ha entregado una serie de fuentes de datos y requiere que usted realice los siguientes entregables relacionados con la etapa de entendimiento de datos:

1.	**Entregable 1 - Perfilamiento de datos:** Explore las fuentes de datos compartidas y analice el resultado. 
  
2.  **Entregable 2 - Análisis de calidad de datos:** Revise las 4 dimensiones de calidad vistas en el curso en las fuentes compartidas y saque conclusiones.

3.  **Entregable 3- Conclusión del entendimiento de datos:** Valide y documente si es posible realizar los análisis solicitados, si debe hacer ajustes en la forma como han sido planteados o si requiere de información adicional para el desarrollo de los mismos. En caso de ser posible, indique las columnas que permiten relacionar los registros de las diferentes fuentes para poder integrarlas y no olvide incluir la lista de supuestos y dudas que quedan luego de este ejercicio para que sea la empresan quien de respuesta a esas inquietudes. 

Recuerde que la exploración de los datos depende de los objetivos que tenga el proyecto de analítica. Es así como Infraestructura Visible le comparte **ejemplos** de análisis que en este momento está interesado en responder:

1.	**Análisis 1:** ¿Cuántos pasajeros salieron de Medellín a Cali durante temporadas altas? (e.g., Semana santa). En general quiere aplicar este análisis a diferentes ciudades de Colombia y en diferentes temporadas altas.
2.	**Análisis 2:** ¿Qué departamento de Colombia tiene mayor número de sillas salientes desaprovechadas en un año o mes de un año específico (e.g, 2015)?
3.	**Análisis 3:** ¿Qué aeropuerto representa mayor exportación internacional en términos de carga?
4.	**Análisis 4:** Top 3 de aeropuertos nacionales que podrían reducir su presupuesto en aviones debido a que no transportan un mínimo del 50% de la capacidad que tienen en carga.
5.	**Análisis 5:** ¿Qué aeropuertos están en centros poblados donde la población de mujeres es mayor a la de hombres, con un PIB, el año de análisis, superior al promedio del Departamento donde está el centro poblado y donde el número de vuelos por mes de un año particular está por debajo del promedio nacional?

A partir de lo anterior, los consultores de BI construyeron la siguiente tabla donde se encuentra la generalización de los ejemplos anteriores como análisis identificados y los datos requeridos para lograr los objetivos de esta tarea.

| Tema analítico  | Análisis requeridos o inferidos | Categoría del análisis (*)  | Procesos de negocio | Fuentes de datos |
| ------------- | ------------- | ------------- | ------------- | ------------- | 
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 1 <br> a. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas. <br> b. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales. <br> c. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas por departamento y país  | Tablero de control  | Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 2 <br> Visualizar el número de puestos desaprovechados en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales, los aeropuertos se pueden agrupar por departamento, país, etc  | Tablero de control  |  Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 3 <br> Visualizar la carga transportada (entrante y saliente) en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales, los aeropuertos se pueden agrupar por departamento, país, etc  | Tablero de control  |  Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 4 <br> Visualizar la carga desaprovechada en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales, los aeropuertos se pueden agrupar por departamento, país, etc  | Tablero de control  | Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 5 <br> Visualizar la información de los aeropuertos que están en centros poblados donde la población de mujeres es mayor a la de hombres, con un PIB, el año de análisis, superior al promedio del Departamento donde está el centro poblado y donde el número de vuelos por mes de un año particular seleccionado está por debajo del promedio nacional ese mismo mes de ese año. <br>| Tablero de control  | Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos  |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 6 <br> Visualizar la información de los aeropuertos y/o vuelos en relación a las proyecciones de habitantes por género, edad y pib <br>| Tablero de control  | Caracterización de los servicios vs comportamiento de los clientes |PIB,  Proyecciones de habitantes por edad y género  |

*La categoría de análisis posibles son Tableros de control, Análisis OLAP, Aprendizaje automático. En el curso solo vamos a abordar los tableros de control

** Los análisis de la tabla pueden ser agrupaciones de análisis más pequeños o se pueden extender, incluso puede que los análisis no estén completos. Es libre de proponerle nuevos análisis al negocio o complementar los de la tabla como parte de sus conclusiones. Piense en que le beneficiaría más a Infraestructura Visible y en paticular a un usuario que esté interesado en este estilo de análisis.

Los datos compartidos por la empresa son registros de vuelos, aeropuertos, información de centros poblados (concentración de mínimo 20 viviendas contiguas) donde el negocio asume que un aeropuerto está asignado a un centro poblado, un centro poblado solo puede estar en un municipio, información de proyección de poblacion y de PIB por departamentos. Dichos datos pueden tener errores ya que no han sido utilizados previamente para ser analizados. 
Con respecto a los datos, la empresa nos comentan lo siguiente:
1.	Hay informacion del PIB para los 32 departamentos desde 2005 hasta 2018
2.	Se tiene la información de proyecciones de vida por género y edad para los 32 departamentos desde 2005 hasta 2015
3.	El total de hombres de valle del cauca para 2014 es 2110069
5.	Hay información de 605.448 vuelos entre 2004 y 2018 y de 865 aeropuertos construidos desde 2013 hasta 2020
6.	Hay información de 7879 centros poblados 

## **Recursos requeridos**
***Datos suministrados***

Los datos los puede encontrar en la base de datos: ProyectoTransaccional del servidor que manejamos en los tutoriales. También puede encontrar el diccionario de los mismos [aquí](https://github.com/MISW-4402-Analisis-y-Modelado-de-datos/guias/blob/main/docs/Proyecto/Diccionario%20IV.xlsx), ambos recursos requeridos para el desarrollo de esta tarea, las tablas son copias de las tablas relacionales del negocio. Son 5 tablas por lo que un estudiante del grupo se debe encargar de las tablas divipolaCopia y pibCopia, los otros 3 estudiantes se pueden encargar de las otras 3 tablas
-	aeropuertosCopia
-	divipolaCopia
-	vuelosCopia
-	pibCopia
-	proyeccionesCopia

***Tecnología***

Recuerde que está el tutorial de “Entendimiento de datos”, que será de utilidad para el uso de la tecnología utilizada en esta tarea.
- JupyterLab
- Pyspark

## **Recomendaciones de los entregables**
- Incluir en la entrega el enlace (link) de la wiki donde registró lo solicitado en esta tarea con las actividades realizadas dentro de las fechas establecidas
- Incluir el significado de una fila, el cual no es la descripción detallada de columnas o el diccionario de datos
- Evitar tener imágenes o resultados de consultas sin comentarios asociados
- Ser organizado al momento de generar el archivo a entregar
## **Preguntas o más información**
- Las preguntas que surjan en el desarrollo de esta tarea pueden registrarlas en el slack del curso.
- Recuerde que tiene a su disposición el tutorial de Creación y manejo de la Wiki [aquí](https://misovirtual.virtual.uniandes.edu.co/codelabs/wiki-github/index.html?index=..%2F..ETL#0)
- La forma en que se organicen y aporten al interior del grupo es fundamental para el logro del objetivo del proyecto y será evaluada en la entrega final del proyecto.
