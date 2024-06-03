USE Estudiante_43;
--------------------- Modelo de hecho orden
CREATE TABLE Ciudad (
ID_Ciudad SMALLINT, 
Nombre VARCHAR(30),
Continente VARCHAR(30), 
Pais VARCHAR(30), 
Población INT,
Region VARCHAR(20), 
Territorio_ventas VARCHAR(30),
Estado_provincia VARCHAR(30), 
Subregion VARCHAR(30) ,
PRIMARY KEY(ID_Ciudad));

CREATE TABLE Fecha (
Fecha DATETIME, 
Dia TINYINT, 
Mes VARCHAR(20), 
Anio SMALLINT,
Numero_semana_ISO TINYINT,
PRIMARY KEY(Fecha));

CREATE TABLE Empleado (
ID_Empleado SMALLINT, 
Es_vendedor BOOLEAN, 
Nombre VARCHAR(20) ,
PRIMARY KEY(ID_Empleado));

CREATE TABLE TipoPaquete (
ID_TipoPaquete TINYINT, 
Nombre VARCHAR(20) ,
PRIMARY KEY(ID_TipoPaquete));

CREATE TABLE Producto (
ID_Producto SMALLINT, 
Nombre VARCHAR(100),
Marca VARCHAR(30), 
Paquete_de_compra VARCHAR(20), 
Color VARCHAR(10), 
Necesita_refrigeracion BOOLEAN, 
Dias_tiempo_entrega SMALLINT, 
cantidad_por_salida INT, 
Precio_minorista_recomendado FLOAT, 
Paquete_de_venta VARCHAR(20), 
Precio_unitario FLOAT,
PRIMARY KEY(ID_Producto));

CREATE TABLE Orden (
ID_Producto SMALLINT, 
Fecha_pedido DATETIME,
ID_Ciudad SMALLINT,
ID_Cliente INT,
ID_Empleado SMALLINT,
ID_TipoPaquete TINYINT,
Cantidad INT,
Impuestos FLOAT,
Valor_total FLOAT,
PRIMARY KEY(ID_Producto,Fecha_pedido, ID_Ciudad, ID_Empleado, ID_TipoPaquete));

INSERT INTO Fecha 
    ( Fecha, Dia, Mes, Anio, Numero_semana_ISO )
VALUES 
    ( '1998-01-23 12:45:56', 23, 'Jan', 1998, 5);

INSERT INTO Ciudad 
    ( ID_Ciudad, Nombre,  Continente, Pais, Población, Region, Territorio_ventas, Estado_provincia, Subregion ) 
VALUES 
    ( 1, 'Carrollton', 'North America', 'United States', 3938, 'Americas', 'Southeast', 'Kentucky', 'Northern America');

INSERT INTO Empleado 
    ( ID_Empleado, Es_vendedor, Nombre ) 
VALUES 
    ( 2, True, 'Ethan Onslow' );

INSERT INTO TipoPaquete 
    ( ID_TipoPaquete, Nombre )
VALUES 
    ( 5,  'Can');

INSERT INTO Producto 
    ( ID_Producto, Nombre, Paquete_de_compra, Necesita_refrigeracion, Dias_tiempo_entrega, cantidad_por_salida, Precio_minorista_recomendado, Paquete_de_venta, Precio_unitario  ) 
VALUES 
    ( 10, 'Small 9mm replacement blades 9mm', 'Each', False, 14, 10, 6.13, 'Each',4.10);

INSERT INTO Orden 
    ( ID_Producto, Fecha_pedido, ID_Ciudad, ID_Empleado, 
    ID_TipoPaquete, Cantidad, Impuestos, Valor_total ) 
VALUES 
    ( 10, '1998-01-23 12:45:56', 1, 2, 5, 200, 0.13, 820);
    
    
SELECT 
    productos.Nombre AS producto, 
    Cantidad, 
    Valor_total, 
    Fecha_pedido, 
    ciudades.Nombre AS ciudad
FROM 
    Estudiante_43.Orden AS ordenes, 
    Estudiante_43.Producto AS productos, 
    Estudiante_43.Ciudad AS ciudades
WHERE 
    ordenes.Fecha_pedido BETWEEN '1998-01-22' AND '1998-01-24' 
    AND ordenes.ID_Ciudad = ciudades.ID_Ciudad
    AND ordenes.ID_Producto = productos.ID_Producto;
