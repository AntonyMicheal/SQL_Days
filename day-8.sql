use coffee_shop;

-- How to use ORDER BY


update customers set last_name = "A" where last_name is null;
select * from customers order by last_name;

select * from products order by price desc;

select first_name, last_name from customers where first_name like '_a%' order by first_name asc;


