SET STATISTICS IO ON

SELECT SUM(sh.UnitsSold), SUM(LEN(sh.LocationName))
FROM SalesHistory sh

SELECT SUM(sh.UnitsSold), SUM(LEN(sh.LocationName))
FROM SalesHistory sh
WHERE sh.LocationId > 1000000000
