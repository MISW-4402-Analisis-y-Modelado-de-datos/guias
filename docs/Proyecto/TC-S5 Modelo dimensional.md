# **Modelo dimensional del proyecto y diseño del proceso ETL**
## **Objetivo**
- Modelar multidimensionalmente la base datos (BD) utilizada para los análisis sugeridos del proyecto.  
- Diseñar el proceso ETL para cargar las tablas que se deben crear asociadas al modelo multidimensional propuesto.
## **Instrucciones**

![](Img/S210InfrestructuraVisible.png)


En esta fase del proyecto, a partir de los análisis requeridos y de fuentes de datos proporcionadas, Infraestructura Visible le solicita:
1.	**Entregable 1- Modelo multidimensional:** Una propuesta de modelo multidimensional que permita realizar los análisis propuestos por la organización. El modelo debe estar acompañado de una descripción y justificación. Modele el proceso de negocio <i>RegistroDeVuelos</i> que se realiza de forma mensual.
2.	**Entregable 2 - Diseño del proceso ETL:** Incluir el diseño ETL propuesto para poblar las tablas asociadas al modelo multidimensional propuesto, utilizando como fuentes, las compartidas. Incluya una descripción general con los elementos que considere son importantes para la comprensión del diseño. Utilice [esta plantilla del diseño ETL](https://github.com/MISW-4402-Analisis-y-Modelado-de-datos/guias/blob/main/docs/Proyecto/PlantillaDise%C3%B1oETL.xlsx) para esta actividad.

Es importante mencionar que a partir de esta entrega en la nota se evaluará el trabajo en grupo y el trabaja individual. Este último se calcula tomando como base la coevaluación entre miembros de grupo que deben diligenciar.

A continuación, se presentan los análisis propuestos y los datos requeridos para lograr los objetivos de esta tarea.

| Tema analítico  | Análisis requeridos o inferidos | Categoría del análisis (*)  | Procesos de negocio | Fuentes de datos |
| ------------- | ------------- | ------------- | ------------- | ------------- | 
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 1 <br> a. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas. <br> b. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales. <br> c. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas por departamento  | Tablero de control  | Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 2 <br> Visualizar el número de puestos desaprovechados en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales, los aeropuertos se pueden agrupar por departamento  | Tablero de control  |  Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 3 <br> Visualizar la carga transportada (entrante y saliente) en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales, los aeropuertos se pueden agrupar por departamento  | Tablero de control  |  Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 4 <br> Visualizar la carga desaprovechada en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales, los aeropuertos se pueden agrupar por departamento  | Tablero de control  | Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 5 <br> Visualizar la información de los aeropuertos que están en departamentos donde la población de mujeres es mayor a la de hombres y donde el número de vuelos por mes de un año particular seleccionado está por debajo del promedio nacional ese mismo mes de ese año. <br>| Tablero de control  | Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos  |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 6 <br> Visualizar la información de los aeropuertos y/o vuelos en relación a las proyecciones de habitantes por género, edad y pib <br>| Tablero de control  | Caracterización de los servicios vs comportamiento de los clientes |PIB,  Proyecciones de habitantes por edad y género  |
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 7 <br> Visualizar la evolución del aeropuerto en términos de sus características respecto al tiempo | Tablero de control  |  Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos |

** Los análisis de la tabla pueden ser agrupaciones de análisis más pequeños o se pueden extender, incluso puede que los análisis no estén completos. Es libre de proponerle nuevos análisis al negocio o complementar los de la tabla como parte de sus conclusiones. Piense en que le beneficiaría más a Infraestructura Visible y en paticular a un usuario que esté interesado en este estilo de análisis.

## **Recursos requeridos**
***Datos suministrados***

Los datos los puede encontrar en la base de datos: ProyectoTransaccional del servidor que manejamos en los tutoriales. También puede encontrar el diccionario de los mismos [aquí](https://github.com/MISW-4402-Analisis-y-Modelado-de-datos/guias/blob/main/docs/Proyecto/Diccionario%20IV.xlsx). En esta base de datos, a partir de la entrega de la tarea de entendimiento de datos, va a encontrar tanto las tablas con sufijo y sin sufijo "Copia". Las tablas sin sufijo "Copia" representan las tablas corregidas luego de la revisión del entendimiento de los datos.
Tablas compartidas para el entendimiento de datos
-	aeropuertosCopia
-	divipolaCopia
-	vuelosCopia
-	pibCopia
-	proyeccionesCopia

Tablas corregidas luego del reporte de entendimiento de datos
-	aeropuertos
-	divipola
-	vuelos
-	pib
-	proyecciones

***Respuestas del negocio a conclusiones de Entendimiento***<br>

**Comentarios generales**
- Infraestructura Visible sugiere que para el manejo de fechas, si no hay día o mes y se requiere, utilizar como valores por defecto el primer día del mes, y el primer mes de cada año
- Infraestructura Visible está de acuerdo con que ustedes eliminen los duplicados totales que encontraron en los datos en las diferentes tablas compartidas
- Infraestructura Visible está de acuerdo con la estandarización de los meses a nivel de las fechas y esta transformación será responsabilidad de ustedes

**Departamentos, Municipios, Centros poblados**
- Se revisaron los datos y se completó la información de los 10 departamentos y los 2 años que faltaban de los datos.
- Infraestructura Visible revisó su comentario sobre problemas de los nombres en los departamentos y encontró efectivamente, diferentes nombres para un mismo departamento, por lo cual les propone estandarizar los nombres en un proceso de transformación que será responsabilidad de ustedes
- Se revisaron los datos y se completó la información de los 2 departamentos que faltaban en los datos y los datos de proyecciones según edad para cada género
- Se revisó la columna constante DP, que representa el código del departamento y se asignaron los valores correctos
- Se revisaron las columnas Código Departamento y Nombre Municipio de la tabla divipolaCopia, se corrige el nombre del municipio pero les solicita corregir el código del departamento, usando como base la tabla de PIB. 
- Los valores de longitud y Latitud de divipola fueron corregidos
- Con respecto a los nombres de los departamentos que presentan errores,  el negocio les recomienda primero estandarizar los nombres haciendo uso de diccionarios y luego revisar duplicados para finalmente lograr hacer las integraciones que sean necesarias 
- Se eliminaron los registros inconsistentes, donde aparecia el mismo centro poblado ubicado en distintos puntos geográficos según sus variables de latitud y longitud

**Proyecciones y PIB**
- Las proyecciones no hacen referencia a cantidad de vuelos, son proyecciones de población, es decir habitantes vivos por departamento para un año
- El valor real de hombre para Valle del Cauca en 2014 es incorrecto, les piden que hagan la corrección (les recomendamos pensar en este caso, con los datos que tienen, ¿cuál es el mejor método de imputación?)
- Infraestructura Visible, les solicitan imputar el valor extremo de la variable <i>total Mujeres</i>
- El PIB es una medida de valor agregado, sus medidas son heterogéneas
- Los totales son la suma por edad o genero. Ej Total 57 = Mujeres 57 +Hombres 57, Total Hombres = SUM(Hombres_i). Las proyecciones especificas son calculadas por el DANE a partir de los censos nacionales
- Con respecto a la regla 2 de negocio que dice "se tiene la información de proyecciones de vida por género y edad para los 32 departamento desde 2005 a 2015" se aclara que la información incluída va hasta diciembre de 2014.

**Aeropuertos**
- Infraestructura Visible les recuerda que el año de inicio para la bodega de datos es 2015, pero que cuenta con información desde 1957 y la historia de cambio se empezó a registrar desde 2015 y se tiene historia hasta 2017
- Se completó la información de aeropuertos origen y destino que faltaba
- Se corrigieron los valores de longitud de pista, se agregaron las categorías para los aeropuertos que no son aeródromos
- Se revisó la columna constante de Latitud de los aeropuertos y se corrigieron los valores
- Identificó el problema con número de vuelos origen negativos y les solicita que corrijan esos valores negativos multiplicando por -1
- Los datos compartidos de aeropuertos no incluyen los aeropuertos internacionales.
- A pesar del esfuerzo para recolectar información de dimensiones de aeropuestor y de número de vuelos para los cuales fueron diseñados, hay varios aeropuertos para los cuales no se consiguió esta información y se utiliza como comodín para completarlos el valor de 0 en dichos campos.

**Vuelos**
- Las siglas de tráfico significan: N = Nacional, I = Internacional, E= postal o urgentes. Las siglas de tipos de vuelos significan: R= regular, T= taxi, C= chárter, A= adicionales
- Infraestructura visible nos aclara que las unidades de las variables carga_bordo y carga_ofrecida son kilogramos.
- - Infraestructura Visible les comenta que se hicieron las revisiones y se quitaron los registros duplicados para los aeropuertos que coincidian en nombre y variaban en las columnas carga_bordo, carga_ofrecida y pasajeros_en_vuelos de la tabla de vuelos

**Integración**
- La integración entre divipola y aeropuertos debe realizarse utilizando los códigos de municipio ya que los aeropuertos están asociados únicamente a municipios. En particular, les sugiere utilizar las columnas gcd_municipio y gcd_departamento a nivel de aeropuertos y relacionarlas con las columnas código municipio y código de departamento de divipola.
- La integración entre aeropuertos y vuelos se hace respectivamente por medio de la Sigla y los campos origen o destino.


***Tecnología***

Recuerde los videos y lecturas de modelado multidimensional, que serán de utilidad para el desarrollo de esta tarea.

Adicionalmente, se le sugiere utilizar una herramienta como [GenMyModel](https://www.genmymodel.com/) o [Lucidchart](https://lucid.app/es/users/login#/login?_gl=1*1sru4v4*_ga*MjA1NjkyODI5LjE2NTUzMjA2MzY.*_ga_MPV5H3XMB5*MTY1NTQzMTAyOS4yLjAuMTY1NTQzMTAyOS42MA..&anonId=0.8bb37e0e18168cc6c65&sessionDate=2022-06-17T01:57:06.970Z&sessionId=0.88d2ce41816f60d91a&activate=lucidchart) para dibujar el modelo. Este tipo de herramientas facilita el mantenimiento de los modelos de datos.

## **Recomendaciones de los entregables**
Incluir en la entrega la dirección (URL) de la wiki del repostiro del grupo <i>Proyecto_Gi</i> donde registró lo solicitado en esta tarea

## **Preguntas o más información**
- Las preguntas que surjan en el desarrollo de esta tarea pueden registrarlas en el slack del curso
- Recuerde que tiene a su disposición el tutorial de Creación y manejo de la Wiki [aquí](https://misovirtual.virtual.uniandes.edu.co/codelabs/wiki-github/index.html?index=..%2F..ETL#0)
- Nota grupal aporta un 9%  y nota individual un 1%.
