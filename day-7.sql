
use coffee_shop;

select first_name, phone_number from customers where gender = "f" and last_name = "Bluth";

-- using greater than

select product_name from products where price > 3.0 or coffee_origin = "lanka";

-- using null --

select * from customers where gender = "M" and phone_number is null;

-- using in / not insert

select * from customers where last_name in ("taylor", "armstrong", "Bluth");

select * from customers where last_name not in ("taylor", "armstrong", "Bluth");

-- using between --

select * from customers where id between 4 and 10;

select id, product_id, customer_id, order_time from orders where order_time between '2017-01-01' and '2017-01-07';

-- using like statement -- 

select * from customers;
-- using % symbol - any number of charectors

select * from customers where last_name like "%o%";

-- using "_" -- single charector

select * from customers where last_name like "%o_"; 
