show databases;
use coffee_shop;
show tables;

explain products;

-- insert data into table

insert into products (product_name, price, coffee_origin) values ("Espresso", 2.5, "Brazil");
select * from products;
insert into products (product_name, price, coffee_origin) values ("Macchiato", 3.5, "Brazil"), ("Cuppuchino", 3.5, "Costa rica");

insert into products (product_name, price, coffee_origin) values("latte", 3.5, "indonesia"), ("Americano", 3.0, "Brazil"), ("Flat White", 3.5, "Indonesia")
,("filter", 3.0,"india");

-- update a data in table

update products set coffee_origin = " Sri lanka" where id = 7;

set sql_safe_updates = 0;

update products set coffee_origin = "lanka" where  product_name = "filter";

update products set coffee_origin = "Euthiopia", price = 3.0 where product_name = "Americano";


-- delete data from a table

create database example;
use example;

create table people(
id int auto_increment primary key,
name varchar(20),
age int,
gender enum('m','f')
);

insert into people (name, age, gender) 
values("antony", 20, 'm'), ("alwin",18,"m"), ("amrutha",20, "f"), ("frank", 20,"m"), ("alice", 50,"f"),("Pheobe buffay", 31, "f");
select*from people;

-- deleting data

delete from people where name = "antony"; 

delete from people where gender = "f";

delete from people where name = "amrutha"and gender = "f";
