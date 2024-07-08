CREATE TRIGGER tr_actualizar_empleados
ON empleados
FOR UPDATE
AS
BEGIN
    IF UPDATE(documento)
    BEGIN
        INSERT INTO controlCambios (usuario, fecha, datoanterior, datonuevo)
        SELECT SYSTEM_USER, GETDATE(), deleted.documento, inserted.documento
        FROM inserted, deleted;
    END
    IF UPDATE(nombre)
    BEGIN
        INSERT INTO controlCambios (usuario, fecha, datoanterior, datonuevo)
        SELECT SYSTEM_USER, GETDATE(), deleted.nombre, inserted.nombre
        FROM inserted, deleted;
    END
    IF UPDATE(domicilio)
    BEGIN
        INSERT INTO controlCambios (usuario, fecha, datoanterior, datonuevo)
        SELECT SYSTEM_USER, GETDATE(), deleted.domicilio, inserted.domicilio
        FROM inserted, deleted;
    END
    IF UPDATE(seccion)
    BEGIN
        INSERT INTO controlCambios (usuario, fecha, datoanterior, datonuevo)
        SELECT SYSTEM_USER, GETDATE(), deleted.seccion, inserted.seccion
        FROM inserted, deleted;
    END
END;
