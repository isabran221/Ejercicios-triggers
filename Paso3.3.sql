CREATE TRIGGER tr_eliminar_empleados
ON empleados
FOR DELETE
AS
BEGIN
    INSERT INTO controlCambios (usuario, fecha, datoanterior, datonuevo)
    SELECT SYSTEM_USER, GETDATE(), deleted.documento, NULL
    FROM deleted;
END;
