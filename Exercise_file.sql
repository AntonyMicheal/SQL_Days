-- Exercise -- 

-- 1) From products table select the name and price of all products with a coffee origin equal to colombia or indonesia ordered by name from a-z;

select * from orders;
select product_name, price, coffee_origin from products where coffee_origin = 'colombia' or coffee_origin = 'indonesia' order by product_name asc;

-- 2) from orders table select all the orders from february 2017 for customers with ids of 2.4,6 or 8

select * from orders where customer_id in (2,4,6,8);

-- 3) from customers select the first name and phone number of all customers whos last name contains the pattern "ar"

select first_name, last_name, phone_number from customers where last_name like "%ar%";