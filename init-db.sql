CREATE DATABASE IF NOT EXISTS users_db;
CREATE DATABASE IF NOT EXISTS products_db;

USE users_db;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

USE products_db;
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    icon VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO products (name, description, price, stock, icon) VALUES
('Laptop HP', 'Laptop 15.6"', 899.99, 15, '💻'),
('Mouse Logitech', 'Mouse inalámbrico', 29.99, 50, '🖱️'),
('Teclado Mecánico', 'Teclado RGB', 79.99, 30, '⌨️'),
('Monitor LG 27"', 'Monitor 4K', 349.99, 10, '🖥️');