CREATE DATABASE eCommerce;
USE eCommerce;

CREATE TABLE customers (
	cust_id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(2),
    signup_date DATE
    );
    
CREATE TABLE products (
	prod_id INT PRIMARY KEY,
    prod_name VARCHAR(50),
    cateogry VARCHAR(30),
    price DECIMAL (10,2)
    );
    
CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    cust_id INT,
    order_date DATE,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
    );
    
CREATE TABLE order_items (
	order_item_id INT PRIMARY KEY,
    order_id INT,
    prod_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (prod_id) REFERENCES products(prod_id)
    );

INSERT INTO customers VALUES
(1,'John','Doe','john@email.com','Newark','NJ','2023-01-15'),
(2,'Jane','Smith','jane@email.com','Boston','MA','2023-02-20'),
(3,'Mike','Brown','mike@email.com','Albany','NY','2023-03-10'),
(4,'Emily','Davis','emily@email.com','Hartford','CT','2023-04-05'),
(5,'Chris','Wilson','chris@email.com','Baltimore','MD','2023-05-12'),
(6,'Sarah','Miller','sarah@email.com','Newark','NJ','2023-06-18'),
(7,'David','Moore','david@email.com','Boston','MA','2023-07-22'),
(8,'Laura','Taylor','laura@email.com','Albany','NY','2023-08-30'),
(9,'Daniel','Anderson','dan@email.com','Hartford','CT','2023-09-11'),
(10,'Olivia','Thomas','olivia@email.com','Baltimore','MD','2023-10-01'),
(11,'James','Jackson','james@email.com','Newark','NJ','2023-10-15'),
(12,'Sophia','White','sophia@email.com','Boston','MA','2023-11-20'),
(13,'Benjamin','Harris','ben@email.com','Albany','NY','2023-12-05'),
(14,'Mia','Martin','mia@email.com','Hartford','CT','2024-01-10'),
(15,'Lucas','Thompson','lucas@email.com','Baltimore','MD','2024-02-14'),
(16,'Charlotte','Garcia','charlotte@email.com','Newark','NJ','2024-03-01'),
(17,'Henry','Martinez','henry@email.com','Boston','MA','2024-03-15'),
(18,'Amelia','Robinson','amelia@email.com','Albany','NY','2024-04-01'),
(19,'Ethan','Clark','ethan@email.com','Hartford','CT','2024-04-10'),
(20,'Isabella','Rodriguez','bella@email.com','Baltimore','MD','2024-04-20'),
(21,'Noah','Lee','noah@email.com','Philadelphia','PA','2024-05-01'),
(22,'Ava','Walker','ava@email.com','Providence','RI','2024-05-03'),
(23,'Liam','Hall','liam@email.com','New Haven','CT','2024-05-05'),
(24,'Emma','Allen','emma@email.com','Trenton','NJ','2024-05-07'),
(25,'Elijah','Young','elijah@email.com','Wilmington','DE','2024-05-10'),
(26,'Chloe','King','chloe@email.com','Buffalo','NY','2024-05-12'),
(27,'Mason','Wright','mason@email.com','Rochester','NY','2024-05-15'),
(28,'Harper','Scott','harper@email.com','Jersey City','NJ','2024-05-18');

INSERT INTO products VALUES
(1,'Laptop','Electronics',1200.00),
(2,'Smartphone','Electronics',800.00),
(3,'Tablet','Electronics',500.00),
(4,'Headphones','Electronics',150.00),
(5,'Keyboard','Electronics',100.00),
(6,'Mouse','Electronics',50.00),
(7,'Office Chair','Furniture',300.00),
(8,'Desk','Furniture',400.00),
(9,'Monitor','Electronics',250.00),
(10,'Printer','Electronics',200.00),
(11,'Backpack','Accessories',80.00),
(12,'Water Bottle','Accessories',25.00),
(13,'Notebook','Stationery',10.00),
(14,'Pen Pack','Stationery',5.00),
(15,'Desk Lamp','Furniture',60.00),
(16,'Gaming Mouse','Electronics',75.00),
(17,'Mechanical Keyboard','Electronics',180.00),
(18,'Webcam','Electronics',90.00),
(19,'External Hard Drive','Electronics',130.00),
(20,'Standing Desk','Furniture',600.00),
(21,'Desk Organizer','Accessories',35.00);

INSERT INTO orders VALUES
(1,1,'2024-01-05'),
(2,2,'2024-01-10'),
(3,3,'2024-01-15'),
(4,4,'2024-01-20'),
(5,5,'2024-01-25'),
(6,6,'2024-02-01'),
(7,7,'2024-02-05'),
(8,8,'2024-02-10'),
(9,9,'2024-02-15'),
(10,10,'2024-02-20'),
(11,11,'2024-03-01'),
(12,12,'2024-03-05'),
(13,13,'2024-03-10'),
(14,14,'2024-03-15'),
(15,15,'2024-03-20'),
(16,16,'2024-03-25'),
(17,17,'2024-04-01'),
(18,18,'2024-04-05'),
(19,19,'2024-04-10'),
(20,20,'2024-04-15'),
(21,1,'2024-04-20'),
(22,2,'2024-04-22'),
(23,3,'2024-04-24'),
(24,4,'2024-04-26'),
(25,5,'2024-04-28'),
(26,21,'2024-05-02'),
(27,22,'2024-05-04'),
(28,23,'2024-05-06'),
(29,24,'2024-05-08'),
(30,25,'2024-05-11'),
(31,26,'2024-05-13'),
(32,27,'2024-05-16'),
(33,28,'2024-05-19'),
(34,21,'2024-05-21'),
(35,22,'2024-05-23');

INSERT INTO order_items VALUES
(1,1,1,1),
(2,1,4,2),
(3,2,2,1),
(4,2,5,1),
(5,3,3,1),
(6,3,6,2),
(7,4,7,1),
(8,5,8,1),
(9,6,9,2),
(10,7,10,1),
(11,8,11,3),
(12,9,12,2),
(13,10,13,5),
(14,11,14,10),
(15,12,15,1),
(16,13,1,1),
(17,14,2,2),
(18,15,3,1),
(19,16,4,1),
(20,17,5,2),
(21,18,6,3),
(22,19,7,1),
(23,20,8,1),
(24,21,9,2),
(25,22,10,1),
(26,23,11,2),
(27,24,12,1),
(28,25,13,4),
(29,5,2,1),
(30,10,3,1),
(31,15,4,2),
(32,20,5,1),
(33,7,6,2),
(34,8,7,1),
(35,9,8,1),
(36,10,9,1),
(37,11,10,2),
(38,12,11,1),
(39,13,12,3),
(40,14,13,2),
(41,26,16,1),
(42,26,1,1),
(43,27,17,1),
(44,27,4,2),
(45,28,18,1),
(46,28,2,1),
(47,29,19,2),
(48,30,20,1),
(49,31,21,3),
(50,32,3,1),
(51,33,5,2),
(52,34,6,1),
(53,34,7,1),
(54,35,8,1),
(55,35,9,2),
(56,35,10,1);

SELECT fname, lname, city, state
FROM customers
WHERE city = 'Newark'; -- shows customers from Newark

SELECT prod_id, prod_name, price
FROM products
WHERE (price > 200); -- selects products over $200

SELECT order_id, order_date
FROM orders
WHERE order_date = '03'; -- COME BACK TO THIS ONE

SELECT order_id, fname, lname
FROM orders
JOIN customers
ON orders.cust_id = customers.cust_id
ORDER BY order_id ASC; -- selects customers and their order id's

SELECT order_items.order_id, SUM(order_items.quantity * products.price) AS orderTotal
FROM products
JOIN order_items
ON products.prod_id = order_items.prod_id
GROUP BY order_items.order_id
ORDER BY order_items.order_id; -- shows order totals based on id

SELECT p.prod_name, SUM(oi.quantity) AS totalQuant
FROM products p
JOIN order_items oi
ON p.prod_id = oi.prod_id
GROUP BY p.prod_name
ORDER BY totalQuant DESC
LIMIT 1; -- shows the most purchased product

SELECT c.fname, c.lname, SUM(oi.quantity * p.price) AS totalSpent
FROM customers c
JOIN orders o ON c.cust_id = o.cust_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.prod_id = p.prod_id
GROUP BY c.cust_id, c.fname, c.lname
HAVING totalSpent > 1000
ORDER BY totalSpent DESC; -- shows customers that spent $1000+ on their order