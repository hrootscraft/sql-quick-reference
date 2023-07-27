-- CREATE VIEW base_result AS SELECT * FROM sales_table
-- WHERE volume > 1000;
-- SELECT customer_name, product_name
-- FROM base_result;

-- same result with foll.
-- SELECT customer_name, product_name
-- FROM (SELECT * FROM sales_table WHERE volume>1000) as b_r;
