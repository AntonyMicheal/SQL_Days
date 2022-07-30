-- Exercise -- 

-- 1) From products table select the name and price of all products with a coffee origin equal to colombia or indonesia ordered by name from a-z;

select * from orders;
select product_name, price, coffee_origin from products where coffee_origin in ('colombia','indonesia') order by product_name asc;

-- 2) from orders table select all the orders from february 2017 for customers with ids of 2.4,6 or 8

select * from orders where order_time between '2017-02-01' and '2017-02-28' and customer_id in (2,4,6,8);

-- 3) from customers select the first name and phone number of all customers whos last name contains the pattern "ar"

select first_name, last_name, phone_number from customers where last_name like "%ar%";

-- 4) from customers table select distinct last names and order alphabetically from a-z.

select distinct last_name from customers order by last_name asc;



-- 5) from the orders table select the first 3 orders placed by customer with id 1 in february 2017

select  product_id from orders where customer_id = 1 and order_time between '2017-02-01' and '2017-02-28'  order by order_time asc limit 3; 

-- 6) from the products table select the name, price and coffee_origin but rename the price to retail_price in result set

select product_name, price as retail_price, coffee_origin as country from products;

-- 7) select the order id and customer phone number for all orders of product id 4

select o.id, c.phone_number from orders o join customers c
on c.id = o.customer_id
join products p on p.id = o.product_id
where p.id = 4;


-- 8) select product name and order time for filter coffees sold between january 15th 2017 and february 14th 2017

select p.product_name, o.order_time from products p join orders o on p.id = o.product_id where p.product_name = "filter" and o.order_time
between '2017-01-15' and '2017-02-14';

-- 9) select the product name and and order time for all orders from females in january 2017

select p.product_name, c.gender,o.order_time from orders o join products p on p.id = o.product_id
join customers c on o.customer_id = c.id
where c.gender = "f" and o.order_time between '2017-01-01' and '2017-01-31' order by order_time
;
