-- =============================================================
-- Pathao Ride Booking Analysis
-- SQL Queries for Exploratory Data Analysis
-- =============================================================

CREATE DATABASE pathao;
USE pathao;

SELECT COUNT(*) AS total_rows
FROM bookings;

SELECT * FROM bookings;

-- ---------------------------------------------------------------
-- 1. Retrieve all successful bookings
-- ---------------------------------------------------------------
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

-- ---------------------------------------------------------------
-- 2. Find the average ride distance for each vehicle type
-- ---------------------------------------------------------------
CREATE VIEW ride_distance_for_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM ride_distance_for_each_vehicle;

-- ---------------------------------------------------------------
-- 3. Get the total number of cancelled rides by customers
-- ---------------------------------------------------------------
CREATE VIEW cancelled_rides_by_customers AS
SELECT COUNT(*) AS total_cancelled
FROM bookings
WHERE Booking_Status = 'Cancelled by Customer';

SELECT * FROM cancelled_rides_by_customers;

-- ---------------------------------------------------------------
-- 4. List the top 5 customers who booked the highest number of rides
-- ---------------------------------------------------------------
CREATE VIEW Top_5_customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

SELECT * FROM Top_5_customers;

-- ---------------------------------------------------------------
-- 5. Get the number of rides cancelled by drivers due to
--    personal and car-related issues
-- ---------------------------------------------------------------
CREATE VIEW cancelled_by_drivers_personal_car_issues AS
SELECT COUNT(*) AS total_cancelled
FROM bookings
WHERE Reason_for_cancelling_by_Driver = 'Personal & Car related issue';

SELECT * FROM cancelled_by_drivers_personal_car_issues;

-- ---------------------------------------------------------------
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings
-- ---------------------------------------------------------------
CREATE VIEW maximum_and_minimum_driver_ratings AS
SELECT MAX(Driver_Ratings) AS max_rating, MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM maximum_and_minimum_driver_ratings;

-- ---------------------------------------------------------------
-- 7. Retrieve all rides where payment was made using UPI
-- ---------------------------------------------------------------
CREATE VIEW payment_made_using_upi AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

SELECT * FROM payment_made_using_upi;

-- ---------------------------------------------------------------
-- 8. Find the average customer rating per vehicle type
-- ---------------------------------------------------------------
CREATE VIEW average_customer_rating_per_vehicle_type AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM average_customer_rating_per_vehicle_type;

-- ---------------------------------------------------------------
-- 9. Calculate the total booking value of rides completed successfully
-- ---------------------------------------------------------------
CREATE VIEW total_booking_value_of_successful_rides AS
SELECT SUM(Booking_Value) AS total_Booking_Value
FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM total_booking_value_of_successful_rides;

-- ---------------------------------------------------------------
-- 10. List all incomplete rides along with the reason
-- ---------------------------------------------------------------
CREATE VIEW incomplete_rides_with_reason AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

SELECT * FROM incomplete_rides_with_reason;
