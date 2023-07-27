-- top 10 sales
-- SELECT * FROM sales_table
-- ORDER BY volume DESC
-- LIMIT 10;

-- bottom 10 sales
-- SELECT * FROM sales_table
-- ORDER BY volume
-- LIMIT 10;

-- SELECT * FROM sales_table
-- WHERE is_disputed IS FALSE
-- ORDER BY volume DESC
-- LIMIT 3;

-- SELECT DISTINCT * FROM sales_table;

SELECT * FROM sales_table
ORDER BY volume DESC
LIMIT 5
OFFSET 3;

