-- SELECT email FROM customers;

-- SELECT c.email FROM customers AS c
-- INNER JOIN orders AS o ON c.id = o.customer_id;

-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max' OR first_name = 'Manu';

-- SELECT id, first_name
-- FROM customers
-- WHERE first_name IN('Max', 'Manu');

-- SELECT email
-- FROM customers
-- WHERE id IN(
--     SELECT customer_id
--     FROM orders
-- );



-- INSERT INTO customers(
--     first_name,
--     last_name,
--     email
-- )
-- VALUES(
--     'Ken',
--     'Brooks',
--     'ken@test.com'
-- );

-- IDs of customers whose first name is either Max or Manu
-- SELECT id, first_name FROM customers WHERE first_name = 'Max' OR first_name = 'Manu';
-- alternative:
-- SELECT id, first_name FROM customers WHERE first_name IN ('Max', 'Manu'); 

-- retrieve a list of emails of customers who placed an order
-- SELECT c.email FROM customers AS c
-- INNER JOIN orders AS o
-- ON c.id = o.customer_id; -- does not WORK
-- alternative:
SELECT email FROM customers WHERE id IN (
    SELECT customer_id FROM orders
);
