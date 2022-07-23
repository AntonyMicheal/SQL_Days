create database test;
use test;

create table people(
	id int,
    f_name varchar(20),
    l_name varchar(20),
    address_id int
);

create table address(
	id int,
    house_number int,
    city varchar(20),
    postal_code varchar(7)
);

create table pets(
	id int,
    owner_id int,
    pet_name varchar(20),
    speciese varchar(20)
);


-- Adding primary key

alter table people add primary key(id);
alter table address add primary key(id);
alter table pets add primary key(id);

-- Adding foreign key 

alter table people add constraint fk_people foreign key(address_id) references address(id);

alter table pets add constraint fk_pets foreign key(owner_id) references people(id);

-- remove foreign key

alter table pets drop foreign key fk_pets;

-- remove primary key

alter table people drop primary key;

-- adding unique

alter table pets add constraint u_pets unique(id);
alter table pets add constraint u_pets_name unique(pet_name);
describe pets;

alter table pets drop index u_pets_name;

-- change column name 

alter table pets change `speciese` `type` varchar(20);
alter table pets change `type` `speciese` varchar(20);

-- change column datatype

alter table pets modify speciese int;
alter table pets modify speciese varchar(20);
