-- SELECT * FROM sales_table
-- WHERE volume > 1000;

-- IS compares against variables that return TRUE/FALSE/NULL whereas 
-- = checks for equivalence
-- SELECT * FROM sales_table
-- WHERE is_recurring IS TRUE;

SELECT * FROM sales_table
WHERE (is_disputed IS TRUE) AND (volume > 5000);
