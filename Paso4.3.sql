-- Actualizar el domicilio de un empleado
UPDATE empleados SET domicilio = 'Bulnes 567' WHERE documento = '22222222';

-- Verificar los cambios en controlCambios
SELECT * FROM controlCambios;
