-- Fix a customer's email (simulate data cleanup)
UPDATE customers 
SET email = 'alice_new@example.com' 
WHERE name = 'Alice Smith';

-- Check the correction
SELECT customer_id, name, email 
FROM customers 
WHERE name = 'Alice Smith';