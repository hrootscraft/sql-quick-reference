CREATE TABLE bookings (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    booking_date DATE NOT NULL,
    num_guests INT UNSIGNED NOT NULL,
    amount_billed NUMERIC(6, 2) NOT NULL,
    amount_tipped NUMERIC(6, 2),
    payment_id INT UNSIGNED,
    table_id INT UNSIGNED,
    FOREIGN KEY (payment_id) REFERENCES payment_methods(id),
    FOREIGN KEY (table_id) REFERENCES tables(id)
);
