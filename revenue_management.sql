-- 1️⃣ Total Revenue Calculation
SELECT SUM(revenue) AS total_revenue 
FROM bookings;

-- 2️⃣ Occupancy Rate Calculation
-- Formula: (Total Booked Rooms / Total Available Rooms) * 100
SELECT 
    (SUM(booked_rooms) * 100.0 / SUM(total_rooms)) AS occupancy_rate 
FROM occupancy;

-- 3️⃣ Average Daily Rate (ADR)
-- Formula: Total Revenue / Number of Booked Rooms
SELECT 
    SUM(revenue) / NULLIF(SUM(booked_rooms), 0) AS ADR 
FROM bookings;

-- 4️⃣ Revenue Per Available Room (RevPAR)
-- Formula: Total Revenue / Total Available Rooms
SELECT 
    SUM(revenue) / NULLIF(SUM(total_rooms), 0) AS RevPAR 
FROM occupancy;
