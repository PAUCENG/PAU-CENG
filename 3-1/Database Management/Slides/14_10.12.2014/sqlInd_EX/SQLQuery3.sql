CREATE PROCEDURE InsertIntoSales
AS 
SET NOCOUNT ON
BEGIN
DECLARE @PC VARCHAR(20)='A12CB'
DECLARE @Price INT = 50
DECLARE @COUNT INT = 0
      WHILE @COUNT<200000
      BEGIN
      SET @PC=@PC+CAST(@COUNT AS VARCHAR(20))
      SET @Price=@Price+@COUNT
      INSERT INTO Sales VALUES (@PC,@Price,GETDATE())
      SET @PC='A12CB'
      SET @Price=50
      SET @COUNT+=1
      END
END

EXEC InsertIntoSales