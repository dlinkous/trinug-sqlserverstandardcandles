SET STATISTICS IO ON

SELECT sh.UnitsSold, shd.UnitId
FROM SalesHistory sh
JOIN SalesHistoryDetails shd ON sh.Id = shd.SalesHistoryId
WHERE sh.LocationId % 10000 = 0
ORDER BY sh.UnitsSold, shd.UnitId
