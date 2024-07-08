-- Deshabilitar el trigger de inserción
DISABLE TRIGGER tr_ingresar_empleados ON empleados;

-- Verificar el estado del trigger
SELECT name, is_disabled FROM sys.triggers WHERE name = 'tr_ingresar_empleados';

-- Ingresar otro empleado y verificar que el trigger no se dispara
INSERT INTO empleados VALUES ('29999999', 'Rosa Rodriguez', 'Rivadavia 627', 'Secretaria');

-- Verificar los cambios en controlCambios
SELECT * FROM controlCambios;
