DECLARE @i INT = 1;
WHILE @i <= 60000
BEGIN
    INSERT INTO Registros (Nombre, Valor, FechaRegistro)
    VALUES ('Nombre ' + CAST(@i AS NVARCHAR(10)), ROUND(RAND() * 1000, 0), GETDATE());

    SET @i = @i + 1;
END
