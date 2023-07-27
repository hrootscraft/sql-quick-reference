-- SELECT * FROM sales_table
-- WHERE date_created > '2021-11-01' AND date_created < '2022-05-01';

-- here both the dates are included
-- SELECT * FROM sales_table
-- WHERE date_created BETWEEN '2021-11-02' AND '2022-04-30';

-- SELECT * FROM sales_table
-- WHERE volume > 1000 AND volume < 100000;

SELECT * FROM sales_table
WHERE volume BETWEEN 1000 AND 100000;
