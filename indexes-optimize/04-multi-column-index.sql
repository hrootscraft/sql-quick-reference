-- indexes that span multiple columns aka composite indexes
-- EXPLAIN ANALYZE
-- SELECT * FROM addresses
-- WHERE city = 'Munich' and street = 'Teststreet';


-- CREATE INDEX multiaddress ON addresses (street, city);
-- EXPLAIN ANALYZE
-- SELECT * FROM addresses
-- WHERE city = 'Munich' and street = 'Teststreet';
