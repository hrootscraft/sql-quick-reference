-- SELECT ROUND(AVG(amount_tipped), 4) FROM bookings;

-- -- avg no of guests per day = 3.8 ~ 4
-- SELECT AVG(num_guests) FROM bookings;
-- SELECT ROUND(AVG(num_guests)) FROM bookings;
-- SELECT ROUND(AVG(amount_tipped), 4) FROM bookings;
-- SELECT ROUND(AVG(amount_tipped), 2) FROM bookings;

SELECT SUM(amount_billed) FROM bookings;
