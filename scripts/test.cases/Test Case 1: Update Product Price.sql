-- Increase the price of "Laptop" by 10%
UPDATE products 
SET price = price * 1.10 
WHERE name = 'Laptop';

-- Verify the update
SELECT product_id, name, price 
FROM products 
WHERE name = 'Laptop';