-- Show --
SHOW DATABASES;	

-- CREATE --
CREATE DATABASE test;

-- USE --

USE test;

-- Show tables --

SHOW TABLES;

-- DROP --
DROP DATABASE test;

-- Create coffee_store -- 

CREATE DATABASE coffee_store;

-- use --
USE coffee_store;

-- create table products --

CREATE TABLE products(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    price decimal(3,2)
);

-- create table customers --

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender ENUM('M','F'),
    phone_number VARCHAR(11)
);

SHOW TABLES;

-- create table orders --

 CREATE TABLE orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    order_time DATETIME,
    
    FOREIGN KEY(product_id) references products(id),
    FOREIGN KEY(customer_id) references customers(id)
 );

describe orders;

-- Adding and removing columns from tables--

describe products;
ALTER TABLE products ADD COLUMN coffee_origin VARCHAR(30);

ALTER TABLE products DROP COLUMN coffee_origin;

