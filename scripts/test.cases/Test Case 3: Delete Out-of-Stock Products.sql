-- First, set a product to zero stock (for testing)
UPDATE products SET stock_quantity = 0 WHERE name = 'Headphones';

-- Delete products with zero stock
DELETE FROM products 
WHERE stock_quantity = 0;

-- Verify deletion
SELECT * FROM products;