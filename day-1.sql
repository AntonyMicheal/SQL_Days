-- Showing all the databases that are present.alter

SHOW DATABASES;

-- Creating a database

CREATE DATABASE coffee_shop;

SHOW DATABASES;

-- How to use a Database

USE coffee_shop;

-- Creating a table

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender ENUM('M','F'),
    phone_number VARCHAR(11)
);

CREATE TABLE products(
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(20),
    price DECIMAL(3,2)
);


-- How to set foreign key 


CREATE TABLE orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    order_time DATETIME,
    
    FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
-- Primary key: a column or a set of columns that uniquely identifies a record within a table
-- Foreign key: a column in a table that is used to link another table with its table


-- How to show all the tables present in the database

SHOW TABLES;

-- How to describe the table structure ( like content of the table, meta data, data type)

EXPLAIN customers; 

DESCRIBE customers;

-- How to add and remove a column from a table.

ALTER TABLE products ADD COLUMN coffee_origin VARCHAR(30);
DESCRIBE products;

-- Remove a column from a table
ALTER TABLE products
DROP COLUMN coffee_origin;

DESCRIBE products;

ALTER TABLE products ADD COLUMN coffee_origin VARCHAR(30);
DESCRIBE products;

-- How to drop a table --

-- DROP TABLE < table_name >

-- Truncate table

TRUNCATE TABLE orders;

DESCRIBE orders;
