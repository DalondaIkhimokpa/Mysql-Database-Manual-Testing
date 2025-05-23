-- Test Case 10. Additional Scenarios
-- 1. Select all customers who joined in May 2023
SELECT product_id, name, price 
FROM products 
WHERE price < 100;


-- Select customers email is null
SELECT customer_id, name 
FROM customers 
WHERE email IS NULL;

-- 2. Update a customer's email address
UPDATE customers
SET email = 'bob@test.com' 
WHERE name = 'Bob Johnson';
-- Verify the update
SELECT customer_id, name, email
FROM customers 
WHERE name = 'Bob Johnson';

-- 3. Select all products with a price less than $100
SELECT product_id, name, price
FROM products 
WHERE price < 100;

-- 4. Select all orders May 2023
SELECT COUNT(*) AS total_orders 
FROM orders 
WHERE order_date BETWEEN '2023-05-01' AND '2023-05-31';


-- 5. Select order details for orders with a total amount greater than $1000
SELECT order_id, total_amount 
FROM orders 
WHERE total_amount > 1000;

-- 6. products with stock quantity of 0
SELECT product_id, name 
FROM products 
WHERE stock_quantity = 0;


-- 7. Select join date of customers
SELECT 
    MONTH(join_date) AS month,
    COUNT(*) AS customer_count
FROM customers
GROUP BY MONTH(join_date);

-- 8. Select all products with average price
SELECT AVG(price) AS avg_price 
FROM products;

-- 9. Select order id and order date for orders placed on weekends
-- (assuming Sunday = 1 and Saturday = 7)
SELECT order_id, order_date 
FROM orders 
WHERE DAYOFWEEK(order_date) IN (1, 7);

-- 10. Select customer id and name for customers with names less than 5 characters
 SELECT customer_id, name 
FROM customers 
WHERE LENGTH(name) < 5;

-- 11. Select all products with names starting with 'L'
SELECT product_id, name 
FROM products 
WHERE name LIKE 'L%';

-- 12. Update a customer's email address
-- Fix a customer's email (simulate data cleanup)
-- 1. Update a customer's email address
SELECT customer_id, name, email
FROM customers 
WHERE name = 'Alice Smith';
-- 1. Fix a customer's email (simulate data cleanup)
-- 1. Update a customer's email address
UPDATE customers 
SET email = 'alice_new@example.com' 
WHERE name = 'Alice Smith';
-- Check the correction
SELECT customer_id, name, email 
FROM customers 
WHERE name = 'Alice Smith';
--verify the update
SELECT * FROM customers WHERE name LIKE '%Alice%';
-- 2. Second Option-Update a customer's email address
-- 2. Update safely (using customer_id)
UPDATE customers 
SET email = 'alice_new@example.com' 
WHERE customer_id = 1;
-- 3. Verify
SELECT * FROM customers WHERE customer_id = 1;

-- 13. Update a product's stock quantity to zero
-- First, set a product to zero stock (for testing)
-- 1. Update a product's stock quantity to zero
UPDATE products SET stock_quantity = 0 WHERE name = 'Headphones';
-- Delete products with zero stock
DELETE FROM products 
WHERE stock_quantity = 0;
-- Verify deletion
SELECT * FROM products;

-- 14. Delete a customer record
-- 1. Delete a customer record
DELETE FROM customers 
WHERE name = 'Alice Smith';
-- 2. Verify deletion
SELECT * FROM customers WHERE name = 'Alice Smith';

-- 15. Select the top 2 most expensive products
SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 2;

-- 16. Select the earliest join date of customers
SELECT name, join_date
FROM customers
ORDER BY join_date ASC
LIMIT 1;

-- 17. Select product names with more than one entry
SELECT name, COUNT(*)
FROM products
GROUP BY name
HAVING COUNT(*) > 1;

-- 18. Select all products with a price less than $100
SELECT product_id, name, price
FROM products 
WHERE price < 100;

-- 19. Select customer id and name for customers with null email
SELECT customer_id, name
FROM customers 
WHERE email IS NULL;

-- 20. Update a product's price to a negative value
UPDATE products
SET price = -50 
WHERE product_id = 101;
-- Verify the update
SELECT product_id, name, price
FROM products 
WHERE product_id = 101;

-- 21. Select all products with a price less than $100
SELECT product_id, name, price
FROM products 
WHERE price < 100;

-- 22. Select distinct join dates of customers
SELECT DISTINCT join_date
FROM customers;

-- 23. Select all products with a price less than $100
SELECT product_id, name, price
FROM products 
WHERE price < 100;

-- 24. Select customer id and name for customers with null email
SELECT customer_id, name
FROM customers 
WHERE email IS NULL;

-- 25. Update a product's price to a negative value
UPDATE products
SET price = -50 
WHERE product_id = 101;
-- Verify the update
SELECT product_id, name, price
FROM products 
WHERE product_id = 101;

-- 26. Select all products with a price less than $100
SELECT product_id, name, price
FROM products 
WHERE price < 100;

-- 27. Select distinct join dates of customers
SELECT DISTINCT join_date
FROM customers;

-- 28. Select all products with a price less than $100
SELECT product_id, name, price
FROM products 
WHERE price < 100;

-- 29. Select customer id and name for customers with null email
SELECT customer_id, name
FROM customers 
WHERE email IS NULL;

-- 30. Update a product's price to a negative value
UPDATE products
SET price = -50 
WHERE product_id = 101;
-- Verify the update
SELECT product_id, name, price
FROM products 
WHERE product_id = 101;


