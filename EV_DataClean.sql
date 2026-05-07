 --Creating a duplicate table to perform data type corrections.
 --The import process produced inconsistent types (e.g., numeric values
 --stored as strings with commas). A staging table allows safe cleaning
 --and conversion before loading into the final schema.

USE MarketShare

INSERT INTO dbo.CleanVehicleData
SELECT *
FROM dbo.RawVehicleData

-- Columns in VixCleanData but not in VehicleData

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dbo.CleanVehicleData'
EXCEPT
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dbo.RawVehicleData';

-- Columns in VehicleData but not in VixCleanData

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dbo.CleanVehicleData'
EXCEPT
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dbo.RawVehicleData';

--REMOVE COMMA AND CHANGE DATA TYPE

SELECT Electric_EV,
		REPLACE(Electric_EV, ',','') AS CleanedValues
FROM dbo.CleanVehicleData

UPDATE dbo.CleanVehicleData
SET Electric_EV = REPLACE(Electric_EV, ',','')

ALTER TABLE dbo.CleanVehicleData
ALTER COLUMN Electric_EV INT

SELECT Electric_EV
FROM dbo.CleanVehicleData
