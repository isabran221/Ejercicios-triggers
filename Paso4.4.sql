-- Deshabilitar el trigger de actualizaci�n
DISABLE TRIGGER tr_actualizar_empleados ON empleados;

-- Verificar el estado del trigger
SELECT name, is_disabled FROM sys.triggers WHERE name = 'tr_actualizar_empleados';
