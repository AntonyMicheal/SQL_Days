create database moviesnow;
use moviesnow;

create table films (
	id int auto_increment primary key,
    f_name varchar(45) not null,
    length_min int not null
);


create table rooms (
	id int auto_increment primary key,
    r_name varchar(45) not null,
    no_seats int not null
);

create table screenings (
	id int auto_increment primary key,
    film_id int,
    room_id int,
    
    foreign key (film_id) references films(id),
    foreign key (room_id) references rooms(id)
);

create table seats (
	id int auto_increment primary key,
    s_row char(1) not null,
    s_number int not null,
    room_id int, 
    foreign key (room_id) references rooms(id)
    
);

create table customers (
	id int primary key,
    first_name varchar(45) not null,
    last_name varchar(45) not null,
    email varchar(45) not null
);

create table bookings (
	id int primary key auto_increment,
    screening_id int not null,
    customer_id int not null,
    
    foreign key (screening_id) references screenings(id),
    foreign key (customer_id) references customers(id)
);


create table reserved_seats (
	id int primary key auto_increment,
    booking_id int not null,
    seat_id int not null,
    
    foreign key (booking_id) references bookings(id),
    foreign key (seat_id) references seats(id)
);

alter table films add constraint uk unique(f_name);

describe films;

alter table customers add constraint uk unique(email);

ALTER TABLE customers MODIFY first_name varchar(45) DEFAULT 0;
ALTER TABLE customers MODIFY id INTEGER NOT NULL AUTO_INCREMENT;
describe customers;

alter table screenings add start_time datetime not null;

