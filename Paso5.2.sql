-- Habilitar todos los triggers
ENABLE TRIGGER tr_ingresar_empleados ON empleados;
ENABLE TRIGGER tr_actualizar_empleados ON empleados;
ENABLE TRIGGER tr_eliminar_empleados ON empleados;

-- Verificar el estado de todos los triggers
SELECT name, is_disabled FROM sys.triggers WHERE parent_class_desc = 'OBJECT_OR_COLUMN' AND parent_id = OBJECT_ID('empleados');
