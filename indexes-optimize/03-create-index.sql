-- CREATE INDEX salaryidx ON users (salary);
DROP INDEX salaryidx ON users;

-- to ensure having unique values we can update the schema 
-- with the keyword UNIQUE which automatically creates the index 
-- or just add the INDEX with prefix UNIQUE 
-- CREATE UNIQUE INDEX salaryidx ON users (email);
