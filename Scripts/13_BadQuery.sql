SET STATISTICS IO ON

CREATE TABLE #Histories (Number INT NOT NULL IDENTITY(1, 1), Id INT NOT NULL, UnitsSold INT NOT NULL)
INSERT INTO #Histories
SELECT sh.Id, sh.UnitsSold
FROM SalesHistory sh
WHERE sh.LocationId % 10000 = 0
CREATE TABLE #Output (UnitsSold INT NOT NULL, UnitId INT NOT NULL)
DECLARE @Number INT = 0
DECLARE @Max INT = (SELECT MAX(Number) FROM #Histories)
WHILE @Number < @Max
BEGIN
	SET @Number = @Number + 1
	DECLARE @Id INT = (SELECT Id FROM #Histories WHERE Number = @Number)
	DECLARE @UnitsSold INT = (SELECT UnitsSold FROM #Histories WHERE Number = @Number)
	INSERT INTO #Output
	SELECT @UnitsSold, shd.UnitId
	FROM SalesHistoryDetails shd
	WHERE shd.SalesHistoryId = @Id
END
DROP TABLE #Histories
SELECT *
FROM #Output
ORDER BY UnitsSold, UnitId
DROP TABLE #Output
