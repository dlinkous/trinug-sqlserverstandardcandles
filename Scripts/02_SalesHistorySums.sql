SET STATISTICS IO ON

SELECT SUM(sh.UnitsSold)
FROM SalesHistory sh

SELECT SUM(sh.UnitsSold)
FROM SalesHistory sh
WHERE sh.LocationId > 1000000000
