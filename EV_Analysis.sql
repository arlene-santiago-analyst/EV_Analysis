USE MarketShare

-- Data exploration


SELECT TOP 10 *
FROM CleanVehicleData
ORDER BY State

 -- PERCENT VEHICLE TYPES BY STATE 

SELECT
    State,
    (Electric_EV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS ElectricEV_Percentage,
        (Plug_In_Hybrid_Electric_PHEV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS PHEV_Percentage,
            (Hybrid_Electric_HEV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS HEV_Percentage,
                (Biodiesel * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Biodiesel_Percentage,
        (Ethanol_Flex_E85 * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Ethanol_Percentage,

    (Compressed_Natural_Gas_CNG * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS CNG_Percentage,

    (Propane * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Propane_Percentage,

    (Hydrogen * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Hydrogen_Percentage,

    (Methanol * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Methanol_Percentage,

    (Gasoline * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Gasoline_Percentage,

    (Diesel * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Diesel_Percentage,

    (Unknown_Fuel * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS UnknownFuel_Percentage

FROM CleanVehicleData
ORDER BY State;

---- EV, PHEV, HEV and GAS % per state

SELECT
    State,
    (Electric_EV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS EV_Percentage,
        (Plug_In_Hybrid_Electric_PHEV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS PHEV_Percentage,
            (Hybrid_Electric_HEV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS HEV_Percentage,
    (Gasoline * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS Gas_Percentage
    FROM CleanVehicleData
    ORDER BY State;

    -- WHAT STATES HAVE THE HIGHEST EV

    SELECT TOP 10
    State,
    (Electric_EV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS EV_Percentage
    FROM CleanVehicleData
    ORDER BY EV_Percentage DESC;

-- WHAT STATES HAVE THE LOWEST EV

        SELECT TOP 10
    State,
    (Electric_EV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS EV_Percentage
    FROM CleanVehicleData
    ORDER BY EV_Percentage ASC;

    -- WHICH ALTERNATE FUEL TYPES ARE BEING USE
    -- What is the frequency of the different vix types?

    SELECT
    SUM(Electric_EV) AS Electric_EV,
    SUM(Plug_In_Hybrid_Electric_PHEV) AS PHEV,
    SUM(Hybrid_Electric_HEV) AS HEV,
    SUM(Biodiesel) AS Biodiesel,
    SUM(Ethanol_Flex_E85) AS Ethanol,
    SUM(Compressed_Natural_Gas_CNG) AS CNG,
    SUM(Propane) AS Propane,
    SUM(Hydrogen) AS Hydrogen,
    SUM(Methanol) AS Methanol
FROM CleanVehicleData;


-- CALIFORNIA VS TEXAS, FLORIDA, NY
SELECT State, Electric_EV, 
        (Electric_EV * 1.0) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS EV_Percentage
FROM dbo.CleanVehicleData
WHERE State IN('California', 'New York', 'Texas', 'Florida')

---- What states use alternative fuels?

SELECT
    State,
    (
        (Electric_EV +
         Plug_In_Hybrid_Electric_PHEV +
         Hybrid_Electric_HEV +
         Biodiesel +
         Ethanol_Flex_E85 +
         Compressed_Natural_Gas_CNG +
         Propane +
         Hydrogen +
         Methanol
        ) * 1.0
    ) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS AltVixPct
FROM dbo.CleanVehicleData
ORDER BY AltVixPct DESC;

-- PHEV & HEV 
SELECT
    State,
    (
        (Plug_In_Hybrid_Electric_PHEV +
         Hybrid_Electric_HEV
        ) * 1.0
    ) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS PHEV_HEV_PCT
FROM dbo.CleanVehicleData
ORDER BY PHEV_HEV_PCT DESC;

-- What states have highest ethanol use?
SELECT TOP 10
    State,
    (
        (Ethanol_Flex_E85
        ) * 1.0
    ) /
    (
        Electric_EV +
        Plug_In_Hybrid_Electric_PHEV +
        Hybrid_Electric_HEV +
        Biodiesel +
        Ethanol_Flex_E85 +
        Compressed_Natural_Gas_CNG +
        Propane +
        Hydrogen +
        Methanol +
        Gasoline +
        Diesel +
        Unknown_Fuel
    ) * 100 AS EtOH_PCT
FROM dbo.CleanVehicleData
ORDER BY EtOH_PCT DESC;


-- -- What percentage overall are EV?
WITH Totals AS (
    SELECT
        SUM(Electric_EV) AS EV,
        SUM(Plug_In_Hybrid_Electric_PHEV) AS PHEV,
        SUM(Hybrid_Electric_HEV) AS HEV,
        SUM(Biodiesel) AS Biodiesel,
        SUM(Ethanol_Flex_E85) AS Ethanol,
        SUM(Compressed_Natural_Gas_CNG) AS CNG,
        SUM(Propane) AS Propane,
        SUM(Hydrogen) AS Hydrogen,
        SUM(Methanol) AS Methanol,
        SUM(Gasoline) AS Gasoline,
        SUM(Diesel) AS Diesel,
        SUM(Unknown_Fuel) AS Unknown_Fuel
    FROM CleanVehicleData
)
SELECT
    EV,
    (EV * 1.0) /
    (EV + PHEV + HEV + Biodiesel + Ethanol +
     CNG + Propane + Hydrogen + Methanol +
     Gasoline + Diesel + Unknown_Fuel) * 100
     AS EV_Percentage_US
FROM Totals;
