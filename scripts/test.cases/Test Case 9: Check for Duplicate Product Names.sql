SELECT name, COUNT(*) 
FROM products 
GROUP BY name 
HAVING COUNT(*) > 1;