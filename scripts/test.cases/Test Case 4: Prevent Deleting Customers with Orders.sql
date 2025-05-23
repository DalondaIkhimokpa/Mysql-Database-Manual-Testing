-- Try to delete a customer who placed orders (should fail if foreign key exists)
DELETE FROM customers 
WHERE name = 'Alice Smith';