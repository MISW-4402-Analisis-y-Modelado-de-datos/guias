# **Tarea: Crear un tablero de control**
## **Introducción**
### Objetivo
- Construir un tablero de control a partir de los datos almacenados en una base de datos relacional con el esquema ROLAP.

¿Para qué?
- Visualizar los resultados del proyecto de datos y facilitar la interacción de los tomadores de decisiones

¿Qué necesita?
    
    1. Herramienta para el diseño de los mock-ups (https://ninjamock.com/)
    2. Herramienta para desarrollar tableros de control -[Looker studio](https://datastudio.google.com)
    3. Acceso al servidor de base de datos donde realizó su tarea anterior o en caso de requerirlo puede utilizar la bodega WWImporters_DWH_tablero con los datos del modelo multidimensional de movimientos. Esta base de datos se publicará luego de realizar la tarea de ETLIncremental.

## **Enunciado**

Wide World  Importers está muy interesado en resolver el siguiente requerimiento analítico por medio del uso de un tablero de control


| **Tema analítico**                                               | **Análisis requeridos o inferidos**                                                                                                       | **Categoría del análisis (\*)** | **Procesos de negocio** | **Fuentes de datos**                                                    |
| ---------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------- | ----------------------- | ----------------------------------------------------------------------- |
| **Movimientos en el inventario de WWI** | Visualizar el número de productos que se movieron en el inventario en un rango de fechas por cliente, proveedor, y/o tipo de transacción y mostrar la información de proveedores, cliente y tipo de transacción| Tablero de control | Inventario                  | Movimientos, Tipos de transacción, Proveedores, Clientes y Productos  |


Es así como lo contrató una vez más para desarrollar los siguientes entregables.

1. **Entregable 1: Mock-up del tablero de control.** Diseñe el tablero de control que piensa implementar. Para ello revise los elementos gráficos que le brinda Looker Studio, busque ejemplos de tableros de control. No olvide pensar en, para quién está haciendo el tablero de control y el requerimiento que se quiere resolver. 
2. **Entregable 2: Modo edición del tablero de control y video técnico.** Una vez tenga claridad del tablero de control que quiere construir, gracias al mock-up diseñado, estará listo para su desarrollo. Recuerde darle identidad de la empresa al tablero que desarrolle. Incluya un video corto (máx. 3 minutos), donde muestre los detalles de edición del tablero construido, como la base de datos a la que se conecta para traer los datos y el resultado del tablero construido.
3. **Entregable 3: Posible uso del tablero.** Incluya un párrafo que contenga:
   - El rol de la organización que se beneficia con el uso de este tablero de control, al igual el área a la que pertenece. Puede definirla de acuerdo al sector.
   - Un nuevo hallazgo obtenido al utilizar el tablero de control y evidencia de su identificación en una imágen sobre el tablero de control.
   - La alineación entre el hallazgo y las funciones de ese rol, los objetivos de Wide World Importers o del área a la que pertenece el rol. Si lo considera necesario puede extender el caso para darle sentido, tal como se hizo en el ejemplo del recurso de la semana sobre uso de tableros de control.
   - Una acción/decisión posible que el rol puede tomar usando el hallazgo sobre el tablero de control.

En los videos y lecturas de esta semana, encuentra lo que debe tener en cuenta para que sus entregables tengan la calidad esperada.

## **Recomendaciones de los entregables**
- Conectarse a la base de datos donde haya realizado el cargue del hecho de movimientos y sus dimensiones o en caso de requerirlo puede utilizar la bodega WWImporters_DWH_tablero con los datos del modelo multidimensional de movimientos

- **El proceso de crear un tablero con una cantidad superior a 10.000 registros puede tomar bastante tiempo y mostrar errores de conexión. En este punto las sugerencias son:** 
  - Inicie el diseño con una tabla con pocos registros y una vez tenga la parte que quiere validar, completamente diseñada cambie la tabla a la definitiva. Puede usar alguna de las tablas de hecho que tienen como sufijo el número de registros que tienen, por ejemplo, **Hecho_Movimiento5000**.
  - Si está accediendo a la solución provista por nosotros, copiéla en su BD y trabajela de forma independiente a otros grupos. Puede crear una muestra de los datos
  

## **Recuerde**
- Ser cuidadoso con los colores y el contraste entre ellos al momento de realizar el tablero de control
- Incluir nombres de gráficas, ejes y unidades cuando se requieran
- Utilizar gráficos que faciliten la interacción
