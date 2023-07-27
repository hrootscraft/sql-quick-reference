-- num of orders on days where amount billed per order is more than 30/-
-- WHERE is applied before aggregation ie GROUP BY here
-- WHERE works on aggregated data therefore following does not work as well:
-- WHERE SUM(amount_billed) > 30; cannot use aggr funct with WHERE.
-- SELECT booking_date, COUNT(booking_date)
-- FROM bookings
-- WHERE amount_billed > 30
-- GROUP BY booking_date;

-- amount earned per day is added and then checked if greater than 30
-- HAVING is applied after aggregation ie GROUP BY here
SELECT booking_date, COUNT(booking_date)
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) > 30;
