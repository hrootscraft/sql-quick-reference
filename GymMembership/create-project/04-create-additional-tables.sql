CREATE TABLE customers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount_billed NUMERIC(5, 2),
    customer_id INT REFERENCES customers
);
