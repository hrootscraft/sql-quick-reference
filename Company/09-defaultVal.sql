CREATE TABLE IF NOT EXISTS conversations(
    user_name VARCHAR(200),
    employer_name VARCHAR(200),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS employers(
    company_name VARCHAR(200),
    company_address VARCHAR(300),
    annual_revenue FLOAT(5,2),
    is_hiring BOOLEAN DEFAULT FALSE
);
