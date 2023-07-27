INSERT INTO employers(
        company_name,
        annual_revenue,
        company_address
    )
VALUES (
        'Learning Inc',
        0.84,
        '12 London Street, London'
    );
INSERT INTO employers(
        company_name,
        annual_revenue,
        company_address,
        is_hiring
    )
VALUES (
        'Big Oil Inc',
        1.92,
        'Dogmat Teen, Greece',
        TRUE
    );
INSERT INTO employers(
        company_name,
        annual_revenue,
        company_address,
        is_hiring
    )
VALUES (
        'Food Inc',
        11.7,
        'Avocado Street 11, Berlin',
        1
    );
INSERT INTO conversations (user_name, employer_name, message)
VALUES (
        'Rutuja Bhure',
        'Learning Inc',
        'Hi! I work in retail.'
    );
INSERT INTO conversations (user_name, employer_name, message)
VALUES (
        'Aneri Shah',
        'Big Oil Inc',
        'Hi! I work in Greece dept.'
    );
