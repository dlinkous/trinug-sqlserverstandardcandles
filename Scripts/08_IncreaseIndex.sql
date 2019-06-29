DROP INDEX IX_SalesHistory_LocationId_UnitsSold
ON SalesHistory
CREATE NONCLUSTERED INDEX IX_SalesHistory_LocationId_UnitsSold_LocationName
ON SalesHistory (LocationId ASC, UnitsSold ASC, LocationName ASC)
ALTER INDEX ALL ON SalesHistory REBUILD
