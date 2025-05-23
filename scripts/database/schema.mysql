-- 1. Create Tables (E-Commerce Example)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) CHECK (price >= 0),
    stock_quantity INT DEFAULT 0
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 2. Insert Sample Data
INSERT INTO customers VALUES 
(1, 'Alice Smith', 'alice@example.com', '2023-01-15'),
(2, 'Bob Johnson', 'bob@example.com', '2023-02-20'),
(3, 'Charlie Brown', 'charlie@example.com', '2023-03-10');

INSERT INTO products VALUES 
(101, 'Laptop', 999.99, 50),
(102, 'Phone', 699.99, 100),
(103, 'Headphones', 149.99, 200)
(104,  'TV', 1000.99,100);


INSERT INTO orders VALUES 
(1001, 1, '2023-05-01', 999.99),
(1002, 2, '2023-05-02', 849.98),
(1003, 3, '2023-05-03', 149.99)
(1004, 3, '2023-05-10', 199.98);