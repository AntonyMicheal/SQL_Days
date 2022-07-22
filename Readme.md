
# Table of Contents
![Image text](https://cdn.iconscout.com/icon/free/png-256/sql-29-1127899.png)
1. [General Info](#general-info)
2. [Introductory Commands](#introcommmands)
<!-- 3. [Installation](#installation)
4. [Collaboration](#collaboration)
5. [FAQs](#faqs)
-->
<a name="general-info"></a>
### General Info
***
SQL - Structured Query language is a language to interact with a database, to retrieve, insert and manipulate the database according to our need.
In this journey we will be learning SQL in a daily basis.

<a name="introcommmands"></a>
### Introductory Commands
***
1. SHOW
2. CREATE
3. DATABASE
4. TABLE
5. USE
6. DESCRIBE
7. EXPLAIN
8. DROP
9. ALTER


### STEPS


Showing all the databases that are present.

```
SHOW DATABASES;
```

Creating a database
```
CREATE DATABASE coffee_shop;

SHOW DATABASES;
```

How to use a Database

```
USE coffee_shop;
```

Creating a table
```
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

```
How to set foreign key 

```
CREATE TABLE orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    order_time DATETIME,
    
    FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
```
## Primary key: a column or a set of columns that uniquely identifies a record within a table
## Foreign key: a column in a table that is used to link another table with its table


How to show all the tables present in the database
```
SHOW TABLES;
```

How to describe the table structure ( like content of the table, meta data, data type)
```
EXPLAIN customers; 

DESCRIBE customers;
```
How to add and remove a column from a table.
```
ALTER TABLE products ADD COLUMN coffee_origin VARCHAR(30);
DESCRIBE products;
```

Remove a column from a table
```
ALTER TABLE products
DROP COLUMN coffee_origin;

DESCRIBE products;

ALTER TABLE products ADD COLUMN coffee_origin VARCHAR(30);
DESCRIBE products;
```


How to drop a table --
```
DROP TABLE < table_name >

Truncate table

TRUNCATE TABLE orders;

DESCRIBE orders;

```



<h2>INDEX</h2>

<table>
  <tr>
    <th>DAYS</th>
    <th>CONTENT</th>

  </tr>
  <tr>
    <td>Day-1 </td>
    <td>Covered all the basic commands such as CREATE, DATABASE, USE, TABLE etc.</td>

  </tr>
</table>
