-- DROP TABLE conversations;
-- DROP TABLE employers;
-- DROP TABLE users;
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(300) NOT NULL,
    annual_salary INT CHECK (annual_salary > 0),
    current_employment_status ENUM('employed', 'unemployed', 'self-employed') NOT NULL
);
CREATE TABLE IF NOT EXISTS employers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    annual_revenue FLOAT(5, 2) CHECK (annual_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);
CREATE TABLE IF NOT EXISTS conversations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    employer_id INT,
    user_name VARCHAR(200),
    employer_name VARCHAR(200),
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
