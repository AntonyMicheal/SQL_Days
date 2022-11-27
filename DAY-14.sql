
CREATE DATABASE test;

USE test;

CREATE TABLE adresses (
	id INT,
    house_number INT,
    city VARCHAR(20),
    post_code VARCHAR(7)
);

CREATE TABLE people (
	id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(20),
    address_id INT
);

CREATE TABLE pets(
	id INT,
    name VARCHAR(20),
    speciese VARCHAR(20),
    owner_id INT
);

show tables;

-- Add and remove primary key --

DESCRIBE adresses;
ALTER TABLE adresses ADD PRIMARY KEY(id);

ALTER TABLE adresses DROP PRIMARY KEY;

-- add primary keys for people and pets --

ALTER TABLE pets ADD PRIMARY KEY(id);
ALTER TABLE people ADD PRIMARY KEY(id);

-- Adding and Removing Foreign Key --

ALTER TABLE people ADD CONSTRAINT FK_PeopleAddress FOREIGN KEY (address_id) REFERENCES adresses (id);
describe people;

ALTER TABLE people DROP FOREIGN KEY FK_PeopleAddress; 

describe people;

-- Adding and removing Unique --
describe pets;
ALTER TABLE pets ADD CONSTRAINT u_species UNIQUE(speciese);
ALTER TABLE pets DROP INDEX u_species;


-- Change Column name --

ALTER TABLE pets CHANGE `speciese` `animal_type` VARCHAR(20);

ALTER TABLE pets CHANGE `animal_type` `speciese` VARCHAR(20);


-- Change column Datatype --

ALTER TABLE adresses MODIFY city VARCHAR(20);