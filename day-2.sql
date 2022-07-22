create database test;

use test;

create table adresses (
	id int,
    house_number int,
    city varchar(30),
    post_code varchar(7)
);


create table people(
	id int,
    first_name varchar(20),
    last_name varchar(20),
    address_id int
);


create table pets(
	id int,
    name varchar(20),
    species varchar(20),
    owner_id int
);


show tables;
--  HOW TO ADD PRIMARY KEY

ALTER TABLE adresses ADD PRIMARY KEY (id);

describe adresses;
-- HOW TO REMOVE PRIMARY KEY

ALTER TABLE adresses DROP PRIMARY KEY;

describe adresses;


ALTER TABLE adresses ADD PRIMARY KEY (id);
ALTER TABLE people ADD PRIMARY KEY (id);

ALTER TABLE people 
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY(address_id) REFERENCES adresses(id);

describe people;

alter table people drop foreign key FK_PeopleAddress;

describe people;

-- CHANGE COLUMN NAME 

ALTER TABLE pets CHANGE `species` `animal_type` VARCHAR(20);
describe pets;

alter table pets change `animal_type` `species` varchar(20);

describe pets;


-- CHANGE COLUMN DATATYPE

alter table adresses modify city varchar(50);

describe adresses;

