-- CREATE TABLE users (
--     full_name VARCHAR(300) NOT NULL,
-- annual_salary INT CHECK (annual_salary > 0) 
-- );

-- UPDATE users 
-- SET annual_salary = NULL
-- WHERE annual_salary = 0;

ALTER TABLE users
ADD CONSTRAINT annual_salary_positive CHECK (annual_salary > 0);
