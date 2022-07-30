use coffee_shop;

-- How to use ORDER BY


update customers set last_name = "A" where last_name is null;
select * from customers order by last_name;

select * from products order by price desc;

select first_name, last_name from customers where first_name like '_a%' order by first_name asc;


-- How to use distinct --
select coffee_origin from products;

select distinct coffee_origin from products;

select distinct customer_id from orders where order_time between '2017-02-01' and '2017-02-28';

select distinct customer_id, product_id from orders where order_time between '2017-02-01' and '2017-02-28';

--  How to use limits --

select * from customers limit 5;

select * from customers limit 5 offset 7; -- displays 5 rows after id 7

select * from customers  order by first_name asc limit 5;

-- How to use column name aliases -- 

select product_name as coffee, price, coffee_origin as country from products;


