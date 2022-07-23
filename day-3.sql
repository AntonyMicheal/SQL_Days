show databases;
use test;
show tables;

describe people;
alter table pets drop  foreign key fk_pets;
alter table people drop primary key;

alter table people add primary key (id);
alter table pets add constraint fk_owner_in_people foreign key(owner_id) references people(id);

-- adding a new column to the table people.
describe people;

alter table people add column email varchar(30);

describe people;

-- add a unique constraint to email column in people table

alter table people add constraint u_email unique(email);
describe people;

-- change column name in pets table - pet_name to first_name

alter table pets change `pet_name` `first_name` varchar(20);
describe pets;

alter table address modify postal_code char(7);
describe address;
