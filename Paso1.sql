-- Eliminar las tablas si existen
IF OBJECT_ID('empleados', 'U') IS NOT NULL DROP TABLE empleados;
IF OBJECT_ID('controlCambios', 'U') IS NOT NULL DROP TABLE controlCambios;

-- Crear la tabla empleados
CREATE TABLE empleados (
    documento CHAR(8) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    domicilio VARCHAR(30),
    seccion VARCHAR(20)
);

-- Crear la tabla controlCambios
CREATE TABLE controlCambios (
    usuario VARCHAR(30),
    fecha DATE,
    datoanterior VARCHAR(30),
    datonuevo VARCHAR(30)
);
