SELECT COUNT(*)
FROM SalesHistory sh
DELETE SalesHistory
WHERE Id % 2 = 0
SELECT COUNT(*)
FROM SalesHistory sh
