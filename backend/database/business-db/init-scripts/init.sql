-- Create products table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0)
);

-- Create sales table
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL REFERENCES products(id) ON DELETE CASCADE,
    quantity INT NOT NULL CHECK (quantity > 0),
    sale_date DATE NOT NULL,
    total DECIMAL(10, 2) GENERATED ALWAYS AS (quantity * (
        SELECT price FROM products WHERE products.id = sales.product_id
    )) STORED
);

-- Insert sample data into products table
INSERT INTO products (name, price) VALUES 
('Product A', 10.00),
('Product B', 20.00),
('Product C', 15.50);

-- Insert sample data into sales table
INSERT INTO sales (product_id, quantity, sale_date) VALUES 
(1, 5, '2024-01-10'),
(2, 2, '2024-01-12'),
(3, 7, '2024-02-05'),
(1, 3, '2024-02-10'),
(2, 4, '2024-03-01');
