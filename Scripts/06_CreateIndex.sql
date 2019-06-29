CREATE NONCLUSTERED INDEX IX_SalesHistory_LocationId_UnitsSold
ON SalesHistory (LocationId ASC, UnitsSold ASC)
