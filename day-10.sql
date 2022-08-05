create database exercise;
-- refreshing after the break of 2-3 days
use exercise;

create table HOD (
id INT not null auto_increment primary key,
h_name varchar(30) not null,
d_id int not null,

foreign key(d_id) references dep (id)
);

create table dep(
id int auto_increment primary key,
d_name varchar(30) not null


);

insert into hod (h_name, d_id) values ("Antony", 1), ("Amrutha",2), ("alwin",3);
insert into dep(d_name) values ("Maths"), ("English"), ("Malayalam");
insert into dep(d_name) values ("tamil");
select d_name as Department_Name, h_name as HOD_Name from HOD h join dep  d on d.id = h.d_id;

describe hod;

drop database exercise;