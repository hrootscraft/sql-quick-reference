CREATE TABLE IF NOT EXISTS users(
    full_name VARCHAR(200),
    annual_salary INT,
    current_employment_status ENUM('employed', 'unemployed', 'self-employed')
);
