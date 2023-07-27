-- CREATE TABLE users (
--     full_name VARCHAR(300) NOT NULL
-- )
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
MODIFY COLUMN current_employment_status ENUM('employed', 'unemployed', 'self-employed') NOT NULL;
