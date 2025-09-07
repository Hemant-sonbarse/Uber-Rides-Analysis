select top 10 * from UberRides

-- Rides per Hour
SELECT RideHour, COUNT(*) AS TotalRides
FROM UberRides
GROUP BY RideHour
ORDER BY RideHour;

-- Rides per Weekday
SELECT Weekday, COUNT(*) AS TotalRides
FROM UberRides
GROUP BY Weekday
ORDER BY CASE Weekday
             WHEN 'Monday' THEN 1
             WHEN 'Tuesday' THEN 2
             WHEN 'Wednesday' THEN 3
             WHEN 'Thursday' THEN 4
             WHEN 'Friday' THEN 5
             WHEN 'Saturday' THEN 6
             WHEN 'Sunday' THEN 7
         END;

-- Top Pickup Locations
SELECT TOP 10 PickupLocation, COUNT(*) AS TotalRides
FROM UberRides
GROUP BY PickupLocation
ORDER BY TotalRides DESC;

-- Top Drop Locations
SELECT TOP 10 DropLocation, COUNT(*) AS TotalRides
FROM UberRides
GROUP BY DropLocation
ORDER BY TotalRides DESC;

--Total cancellations
SELECT 
    SUM(CAST(IsCustomerCancelled AS INT)) AS CustomerCancellations,
    SUM(CAST(IsDriverCancelled AS INT)) AS DriverCancellations,
    SUM(CAST(IsIncomplete AS INT)) AS IncompleteRides
FROM UberRides;


--Cancellation rate by hour / vehicle
-- By Hour
SELECT RideHour,
       AVG(CAST(IsCustomerCancelled AS FLOAT))*100 AS CustomerCancelRate,
       AVG(CAST(IsDriverCancelled AS FLOAT))*100 AS DriverCancelRate
FROM UberRides
GROUP BY RideHour
ORDER BY RideHour;

-- By Vehicle Type
SELECT VehicleType,
       AVG(CAST(IsCustomerCancelled AS FLOAT))*100 AS CustomerCancelRate,
       AVG(CAST(IsDriverCancelled AS FLOAT))*100 AS DriverCancelRate
FROM UberRides
GROUP BY VehicleType
ORDER BY VehicleType;

--Estimated Lost Revenue
SELECT 
    SUM(CASE WHEN IsCustomerCancelled = 1 THEN FarePerKm * RideDistance ELSE 0 END) AS LostRevenueCustomer,
    SUM(CASE WHEN IsDriverCancelled = 1 THEN FarePerKm * RideDistance ELSE 0 END) AS LostRevenueDriver,
    SUM(CASE WHEN IsIncomplete = 1 THEN FarePerKm * RideDistance ELSE 0 END) AS LostRevenueIncomplete
FROM UberRides;

---Operational Efficiency (VTAT & CTAT)
SELECT VehicleType,
       AVG(AvgVTAT) AS AvgVTAT,
       AVG(AvgCTAT) AS AvgCTAT
FROM UberRides
GROUP BY VehicleType;

--Revenue & Fare Analysis
-- Revenue by Vehicle Type
SELECT VehicleType, SUM(BookingValue) AS TotalRevenue
FROM UberRides
GROUP BY VehicleType
ORDER BY TotalRevenue DESC;

-- Revenue by Payment Method
SELECT PaymentMethod, SUM(BookingValue) AS TotalRevenue
FROM UberRides
GROUP BY PaymentMethod
ORDER BY TotalRevenue DESC;

-- Fare per km distribution
SELECT VehicleType, AVG(FarePerKm) AS AvgFarePerKm
FROM UberRides
GROUP BY VehicleType;

-- Ratings / Service Quality
-- Average Ratings per Vehicle Type
SELECT VehicleType,
       AVG(DriverRatings) AS AvgDriverRating,
       AVG(CustomerRatings) AS AvgCustomerRating
FROM UberRides
GROUP BY VehicleType;



