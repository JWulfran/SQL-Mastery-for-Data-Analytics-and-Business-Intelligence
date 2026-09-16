-- This is a comment in one line

/* This 
is a
comment on multiple lines */

-- Retrieve all customer data
select * from customers;

-- Retrieve all order data
SELECT * FROM orders;

-- Retrieve some columns
SELECT first_name, country FROM customers;

-- To separate the columns names, we add a coma between the columns names. 
-- also the order in which, we write the columns matter if we add country before first_name
-- country will appears first.
-- !!! Don't put a coma before the "FROM" clauses