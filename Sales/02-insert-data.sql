-- INSERT INTO sales_table(
--         customer_name,
--         product_name,
--         volume,
--         is_recurring
--     )
-- VALUES ('Rutuja Bhure', 'A book', 12.99, TRUE);
INSERT INTO sales_table(
        date_fulfilled,
        customer_name,
        product_name,
        volume,
        is_recurring,
        is_disputed
    )
VALUES (
        NULL,
        'Learning Inc',
        'Course Bundle',
        4889.62,
        FALSE,
        FALSE
    ),
    (
        '2022-04-10',
        'Big Oil Inc',
        'Trucks',
        400000.0,
        FALSE,
        TRUE
    );
