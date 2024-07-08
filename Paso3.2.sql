CREATE TRIGGER tr_ingresar_empleados
ON empleados
FOR INSERT
AS
BEGIN
    INSERT INTO controlCambios (usuario, fecha, datoanterior, datonuevo)
    SELECT SYSTEM_USER, GETDATE(), NULL, inserted.documento
    FROM inserted;
END;
