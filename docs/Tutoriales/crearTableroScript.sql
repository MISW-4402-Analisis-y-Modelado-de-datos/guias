#----------------------------------------------------------------- CON TABLAS
CREATE TABLE Visualizacion ( 
  ciudad VARCHAR(50),  
  Pais VARCHAR(30), 
  Continente VARCHAR(30), 
  Estado_provincia VARCHAR(30), 
  Fecha DATETIME, 
  Dia TINYINT, 
  Mes VARCHAR(20), 
  Anio SMALLINT, 
  Cantidad INT, 
  Valor_total FLOAT, 
  Impuestos FLOAT, 
  producto VARCHAR(100), 
  Marca VARCHAR(30), 
  empleado VARCHAR(20), 
  cliente VARCHAR(50)); 

INSERT INTO Visualizacion( 
  SELECT  
    ciudades.Nombre AS ciudad,  
    ciudades.Pais, 
    ciudades.Continente, 
    ciudades.Estado_provincia, 
    fechas.Fecha, 
    fechas.Dia, 
    fechas.Mes, 
    fechas.Anio, 
    ordenes.Cantidad, 
    ordenes.Valor_total, 
    ordenes.Impuestos, 
    productos.Nombre AS producto, 
    productos.Marca, 
    empleados.Nombre AS empleado, 
    clientes.Nombre AS cliente 
  FROM  
    Estudiante_i.Ciudad AS ciudades, 
    Estudiante_i.Fecha AS fechas, 
    Estudiante_i.Orden AS ordenes, 
    Estudiante_i.Producto AS productos, 
    Estudiante_i.Cliente AS clientes, 
    Estudiante_i.Empleado AS empleados 
  WHERE 
    ciudades.ID_Ciudad = ordenes.ID_Ciudad 
    AND fechas.Fecha = ordenes.Fecha_pedido 
    AND productos.ID_Producto = ordenes.ID_Producto 
    AND clientes.ID_Cliente = ordenes.ID_Cliente 
    AND empleados.ID_Empleado = ordenes.ID_Empleado); 

# -------------------------------------------------------------------CON VISTAS
CREATE VIEW Visualizacion AS (
 SELECT 
  ciudades.Nombre AS ciudad, 
  ciudades.Pais,
  ciudades.Continente,
  ciudades.Estado_provincia,
  fechas.Fecha,
  fechas.Dia,
  fechas.Mes,
  fechas.Anio,
  ordenes.Cantidad,
  ordenes.Valor_total,
  ordenes.Impuestos,
  productos.Nombre AS producto,
  productos.Marca,
  empleados.Nombre AS empleado,
  clientes.Nombre AS cliente
 FROM 
  Estudiante_43.Ciudad AS ciudades,
  Estudiante_43.Fecha AS fechas,
  Estudiante_43.Orden AS ordenes,
  Estudiante_43.Producto AS productos,
  Estudiante_43.Cliente AS clientes,
  Estudiante_43.Empleado AS empleados
 WHERE
  ciudades.ID_Ciudad = ordenes.ID_Ciudad
  AND fechas.Fecha = ordenes.Fecha_pedido
  AND productos.ID_Producto = ordenes.ID_Producto
  AND clientes.ID_Cliente = ordenes.ID_Cliente
  AND empleados.ID_Empleado = ordenes.ID_Empleado);

