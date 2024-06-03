USE Estudiante_XX;
--------------------- Modelo de hecho movimiento
CREATE TABLE Fecha (
ID_Fecha INT,
Fecha DATE, 
Dia TINYINT, 
Mes VARCHAR(20), 
Anio SMALLINT,
Numero_semana_ISO TINYINT,
PRIMARY KEY(ID_Fecha));

CREATE TABLE Producto (
ID_Producto_DWH SMALLINT, 
ID_Producto_T SMALLINT, 
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
PRIMARY KEY(ID_Producto_DWH));

CREATE TABLE Proveedor(
ID_proveedor_DWH INT
ID_proveedor_T INT
Nombre VARCHAR(20),
Categoria VARCHAR(20),
Contacto_principal VARCHAR(30),
Referencia VARCHAR(30),
Dias_pago INT, 
Codigo_postal INT,
PRIMARY_KEY(ID_proveedor_DWH)
);

CREATE TABLE TipoTransaccion(
ID_Tipo_transaccion_DWH TINYINT,
ID_Tipo_transaccion_T TINYINT,  
Tipo VARCHAR(20),
PRIMARY_KEY(ID_Tipo_transaccion_DWH)
);
