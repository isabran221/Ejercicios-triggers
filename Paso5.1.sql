-- Habilitar el trigger de actualizaci�n
ENABLE TRIGGER tr_actualizar_empleados ON empleados;

-- Actualizar la secci�n de un empleado
UPDATE empleados SET seccion = 'Sistemas' WHERE documento = '23333333';

-- Verificar los cambios en controlCambios
SELECT * FROM controlCambios;
