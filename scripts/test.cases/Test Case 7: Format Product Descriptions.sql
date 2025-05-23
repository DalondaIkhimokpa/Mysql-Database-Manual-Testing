SELECT 
    product_id,
    CONCAT(name, ' - $', price) AS product_label 
FROM products;