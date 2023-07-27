-- SELECT * FROM sales_table
-- WHERE date_fulfilled IS NOT NULL;

-- SELECT * FROM sales_table
-- WHERE date_fulfilled - date_created <= 5;   

-- foll performs the same operation as bove when timestamps are stored rather than just dates
-- SELECT * FROM sales_table
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;
