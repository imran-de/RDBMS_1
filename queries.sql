-- Query 1: JOIN
-- Retrive all booking information with customer name and vehicle name from where customer name came from user table and vehicle name came from vehicle table

SELECT 
    booking.*,
    users.name AS customer_name,
    vehicles.name AS vehicle_name
FROM booking
JOIN users ON booking.user_id = users.user_id
JOIN vehicles ON booking.vehicle_id = vehicles.vehicle_id;

-- Query 2: EXISTS
-- Retrive all vehicles information which vehicle never been booked any user/ alternativly which vehicle information not exists in the booking table

SELECT
    *
FROM vehicles
    WHERE NOT EXISTS(
        SELECT *
        FROM booking
        WHERE booking.vehicle_id = vehicles.vehicle_id
    );

-- Query 3: WHERE
-- Retrive all vehicles information which vehicle group is cars
SELECT 
    *
FROM vehicles
    WHERE type IN ('car') AND status = 'available';


-- Query 4: GROUP BY and HAVING
-- Retrive all vehicles information which vehicles user booked more than 2(user can be same user or multiple use) 

SELECT 
    vehicles.name AS vehicle_name,
    COUNT(*) AS total_booking
FROM booking
JOIN vehicles ON booking.vehicle_id = vehicles.vehicle_id
GROUP BY vehicles.name
HAVING COUNT(*) > 2;