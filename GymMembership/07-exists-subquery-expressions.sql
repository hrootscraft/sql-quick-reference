-- EXISTS stops once it finds the valid entry

-- SELECT first_name, last_name FROM customers WHERE email = 'max@test.com';

-- SELECT EXISTS(
--     SELECT first_name, last_name
--     FROM customers
--     WHERE email = 'manu@test.com'
-- );

-- get all the orders is that manu@test.com had
SELECT o.id
FROM orders AS o
WHERE EXISTS (
        SELECT c.email
        FROM customers AS c
        WHERE c.id = o.customer_id
            AND c.email = 'manu@test.com'
    );
