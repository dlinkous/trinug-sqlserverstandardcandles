SET STATISTICS IO ON

DECLARE @SalesHistoryId INT = 
(
	SELECT TOP (1) sh.Id
	FROM SalesHistory sh
	ORDER BY sh.LocationName ASC
)
SELECT shd.UnitId, shd.QualityAssuranceId
FROM SalesHistoryDetails shd
WHERE shd.SalesHistoryId = @SalesHistoryId
