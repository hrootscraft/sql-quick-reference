-- only if both of these statements can be run 
-- successfully, the database should be changed.

INSERT INTO customers(first_name, last_name, email)
VALUES('Maria', 'Jones', 'maria@test.com');

INSERT INTO orders(amount_billed, customer_id)
VALUES(103.12);

-- but by default in mysql, first one is executed 
-- and second throws an error of column unmatch

-- if the first or second query fails,no data should be added to the database.
-- And this is where transactions come into play we can control the execution of specific statements,
--which should be executed either all together or none at all


