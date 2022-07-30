-- Joins

-- Inner join

select * from orders;

select products.product_name, orders.order_time from orders inner join products  on orders.product_id = products.id;

select customers.first_name, customers.last_name, orders.order_time, orders.product_id from customers inner join orders on orders.customer_id = customers.id order by order_time asc;

--  using table aliasing methode.

select p.product_name, o.order_time from orders o inner join products p on o.product_id = p.id;

select c.first_name, c.last_name, o.order_time, o.product_id from customers c join orders o on o.customer_id = c.id;



--  select from more than two tables --

select * from orders;
select * from products;
select * from customers;

select c.first_name, c.last_name, p.product_name, o.product_id, o.order_time 
from customers c join orders o on o.customer_id = c.id
join products p on c.id = o.product_id order by order_time;

select c.first_name, c.last_name, p.product_name, p.price, o.order_time from customers c join orders o on c.id = o.customer_id
join products p on p.id = o.product_id where c.first_name like "%ar%" order by order_time ;



