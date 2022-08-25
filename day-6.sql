use coffee_shop;

select last_name from customers;

select * from products;

select * from products where price = 3.0 or coffee_origin = "euthiopia";

select * from products where price < 3.0;


use coffee_shop;
select * from customers where phone_number is null;

select * from customers where phone_number is not null;



