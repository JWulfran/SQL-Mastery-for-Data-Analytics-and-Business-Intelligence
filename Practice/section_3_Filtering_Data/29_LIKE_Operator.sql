-- Find all customers whose first name starts with 'M'

SELECT * FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with 'n'

SELECT * FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains 'r'

SELECT * FROM customers
WHERE first_name LIKE '%r%';

-- Find all customers whose first name has an 'r' in a third position

SELECT * FROM customers
WHERE first_name LIKE '__r%';


