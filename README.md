# RDBMS_1 - SQL Query Examples

This project contains SQL queries demonstrating standard RDBMS operations using a sample dataset related to a vehicle rental system.

## Files
- **[queries.sql](queries.sql)**: Contains the SQL queries.
- **[SampleQuery.md](SampleQuery.md)**: Provides sample data and the expected output for each query.

## Queries Overview

The [queries.sql](queries.sql) file includes the following operations:

### 1. JOIN
**Goal:** Retrieve comprehensive booking details.
- Joins the `booking` table with `users` and `vehicles` tables.
- Selects booking details along with the corresponding `customer_name` and `vehicle_name`.

### 2. EXISTS / NOT EXISTS
**Goal:** Identify vehicles with zero bookings.
- Uses the `NOT EXISTS` operator to find vehicles that are not referenced in the `booking` table.
- Useful for finding idle inventory.

### 3. WHERE Clause
**Goal:** Filter vehicles by type.
- Selects all information for vehicles where the type is 'car'.

### 4. GROUP BY and HAVING
**Goal:** Find popular vehicles.
- Groups bookings by vehicle name.
- Counts the number of bookings per vehicle.
- Uses `HAVING` to filter for vehicles that have been booked more than 2 times.