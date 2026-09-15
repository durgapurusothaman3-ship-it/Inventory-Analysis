USE store_db;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS seller;

CREATE TABLE seller (
    seller_id INT PRIMARY KEY AUTO_INCREMENT,
    seller_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(200)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    seller_id INT NOT NULL,
    FOREIGN KEY (seller_id) REFERENCES seller(seller_id)
);
INSERT INTO seller (seller_name, email, phone) VALUES
('Durga Store', 'durga@gmail.com', '9876543210'),
('Devi Traders', 'devi@gmail.com', '9876543211'),
('D Mart', 'deva@gmail.com', '9876543212');

INSERT INTO inventory (product_name, quantity, seller_id) VALUES
('Face Wash', 50, 1),
('Shampoo', 30, 1),
('Rice', 100, 2),
('Sugar', 0, 2),
('Chair', 20, 3),
('Table', 15, 3);

INSERT INTO inventory (product_name, quantity, seller_id)
VALUES ('Lip Balm', 25, 1);

SELECT * FROM inventory;

UPDATE inventory
SET quantity = 40
WHERE inventory_id = 7;

DELETE FROM inventory
WHERE inventory_id = 7;

SELECT COUNT(*) AS total_products
FROM inventory
WHERE quantity > 0;

SELECT product_name, quantity
FROM inventory
WHERE quantity = (SELECT MAX(quantity) FROM inventory);

SELECT AVG(quantity) AS average_inventory
FROM inventory;

