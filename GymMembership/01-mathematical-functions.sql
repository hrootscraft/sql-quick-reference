-- -- monthly bill is greater for monthly membership than the annual one
-- SELECT price * billing_frequency AS annual_revenue FROM memberships;

-- -- annual revenue from all customers
-- SELECT SUM(price * billing_frequency) AS annual_revenue FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNCATE()

-- SELECT consumption FROM memberships;
-- SELECT TRUNCATE(consumption, 0) FROM memberships;
SELECT ROUND(consumption, 1) FROM memberships;

