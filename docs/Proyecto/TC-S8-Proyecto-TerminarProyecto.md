# **Terminación, comunicación y evaluación del proyecto final**
## **Objetivo**
- Construir tableros de control para facilitar la interacción con los datos y la identificación de hallazgos útiles para una organización
- Utilizar el resultado de un ejercicio de analítica descriptiva para identificar su utilidad en el contexto de una organización
- Comunicar el resultado de analítica descriptiva a personas de nivel ejecutivo de una organización
- Aplicar una metodología para el desarrollo de proyectos de analítica descriptiva desde el entendimiento de los datos hasta la visualización del resultado
## **Instrucciones**

![](Img/S210InfrestructuraVisible.png)

En esta fase del proyecto, Infraestructura Visible desea que trabaje en su grupo para concluir las actividades del proyecto y tener la oportunidad de interactuar con las soluciones de otros grupos, construidas en el curso. 

En particular se espera que realice las siguientes actividades:
1. ***Entregable 1: Tableros de control y descripción de dos análisis.*** Deben proponer dos mock-up de los tableros de control y construirlos. Cada tablero de control debe permitir resolver un análisis planteado por ustedes, alineado con los requerimientos de infraestructura visible. El primero de ellos relacionado con las dimensiones (incluido minidimensión aeropuerto y el hecho de historiaCambios de aeropuertos) y otro con los vuelos (la tabla de hechos vuelos y las dimensiones que consideren necesarias). Los tableros deben conectarse a la base de datos que toma el rol de bodega de datos donde están los datos cargados. Para revisar los tableros deben enviar el enlace con la configuración habilitada para edición. Recuerden que este último paso se describe en el tutorial de tableros de control. En esta parte, deben documentar los requerimientos utilizando la tabla que se ha utilizado en enunciados previos, donde se incluye, tema analítico, análisis requerido, datos, entre otro, como se muestra en la siguiente tabla.

| Tema analítico  | Análisis requeridos o inferidos | Categoría del análisis (*)  | Procesos de negocio | Fuentes de datos |
| ------------- | ------------- | ------------- | ------------- | ------------- | 
| Comportamiento de vuelos y aeropuertos en Colombia   | Análisis 1 <br> a. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas. <br> b. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas de aeropuertos Internacionales a aeropuertos en Colombia o entre aeropuertos nacionales. <br> c. Visualizar el número de pasajeros transportados (entrantes y salientes) en un rango de fechas por departamento  | Tablero de control  | Tráfico y capacidad de carga aérea en aeropuertos de Colombia  | Aeropuertos, Vuelos |

2. ***Entregable 2: Video:*** Un documento con el canvas de comunicación ([data storytelling](DataStoryTellingCanvas.xlsx) - ver semana 7 para mayor información) diligenciado y el enlace al video para directivos de una organización, de máximo 5 minutos, comunicando el resultado del proyecto en particular, la interacción con los dos tableros construidos. En este video se espera que apliquen lo visto en el curso, usando el canvas de comunicación, para diseñar su estrategia de comunicación. El video deben dejarlo en el padlet que encontrará más abajo.
3. ***Entregable 3: Coevaluación entre equipos:*** Tendrán la oportunidad de ver el video de otro grupo, al igual que interactuar con los tableros que ese grupo desarrolló como parte de este proyecto. En este punto se espera que pueda darle una retroalimentación valiosa para valorar las fortalezas identificadas en el proyecto y los puntos a mejorar. Esta retroalimentación incluye una calificación. Utilice los criterios definidos de la entrega para asignar esa nota. **Recuerde que el envio de esta actividad la realiza únicamente el líder del grupo**. **Esta actividad debe realizarse un día después de la entrega del proyecto en el recurso coevaluación entre equipos: entrega final del proyecto**.
4. ***Entregable 4: Coevaluación entre integrantes del equipo:*** Tendrán la oportunidad de reflexionar sobre el trabajo en equipo, realizado en el proyecto y llegar a consensos sobre esa parte. Utilice los criterios definidos de la entrega para asignar esa nota y hacer comentarios.
5. ***Entregable 5: Opcional Bono de 20/100 puntos en la nota de la entrega del proyecto*** En el proyecto, tiene la opción de tener un bono por integración de una nueva fuente de datos. Esta nueva fuente de datos debe aportar datos al modelo dimensional (si es necesario adáptelo) de igual manera debe estar en el proceso de ETL y debe ser utilizado el alguno de los tableros de control. Debe explicar esta parte e incluirlo en este entregable. Si no hace el bono, en el envío coloque NA (No aplica).

Asociada a esta entrega encuentra un segundo enlace para determinar el grupo al cual le hará la coevaluación entre equipos. De igual manera encontrará un tercer enlace para que de común acuerdo entre los miembros del grupo, evalúen el aporte y compromiso de los distintos integrantes del grupo en lo que denominamos coevaluación entre integrantes del equipo.

## **Recursos requeridos**
Todo el material desarrollado en el curso. Recuerde que estos recursos a nivel de datos y documentación los encuentra en estos enlaces del  repositorio:

● Datos compartidos en la base de datos **proyecto_sol_test**, que corresponden a las tablas que representan el modelo dimensional compartido por InfraestructuraVisible como solución, el cual se presenta en la siguiente imagen.

- Para el manejo de valores faltantes en los atributos de las dimensiones, si son de tipo numérico utilice -1 y si son de tipo cadena de texto utilice no definido.

El modelo final está disponible después de la entrega de Modelado multidimensional del proyecto en la guía de Modelado y ETL.


## **Recomendaciones de los entregables**
- Tener una copia de las tablas compartidas en su ambiente de máquina virtual para que puedan trabajarlas de forma independiente.
- Dividan el proceso de construcción del tablero de control: la primera parte donde adicionan los gráficos y la segunda, donde prueba con la totalidad de los datos. Durante la primera parte, pueden crear una tabla/vista con la misma estructura de la que requieren y una muestra de los registros para entender su comportamiento. Una vez tengan listo y probado el gráfico pueden hacer la consulta sobre la tabla/vista con todos los datos.
- Incluir en la entrega la dirección de la wiki donde registraron lo solicitado en esta tarea.
- Padlet a utilizar:
    - Enlace: [Padlet proyecto](https://uniandes.padlet.org/mavillam/misw-exposici-n-proyectos-y-comentarios-fnga41ui1f3xv2xo)
    - Contraseña: MProy24SW
    
## **Preguntas o más información**
Las preguntas que surjan en el desarrollo de esta tarea pueden registrarlas en el slack del curso
