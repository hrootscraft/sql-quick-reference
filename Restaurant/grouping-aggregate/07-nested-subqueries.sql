-- -- min tot amount_billed on a single calender day
-- SELECT MIN(daily_sum)
-- FROM (
--         SELECT booking_date,
--             SUM(amount_billed) as daily_sum
--         FROM bookings
--         GROUP BY booking_date
--     ) AS daily_table;


-- when was this min billed ie which calender date
SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
        SELECT MIN(daily_sum)
        FROM (
                SELECT booking_date,
                    SUM(amount_billed) as daily_sum
                FROM bookings
                GROUP BY booking_date
            ) AS daily_table
);
