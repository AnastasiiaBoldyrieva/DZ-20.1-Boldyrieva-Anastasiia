use Mydatabase;

create table car_brands (
    id int primary key auto_increment,
    title varchar(100)
);

create table car_models (
    id int primary key auto_increment,
    carBrandId int,
    title varchar(20),
    foreign key (carBrandId) references car_brands(id)
);

create table users (
    id int primary key auto_increment,
    firstName varchar(20),
    lastName varchar(20),
    email varchar(200),
    password varchar(20)
);

create table cars (
    id int primary key auto_increment,
    userId int,
    carBrandId int,
    carModelId int,
    mileage int,
    initialMileage int,
    foreign key (userId) references users(id),
    foreign key (carBrandId) references car_brands(id),
    foreign key (carModelId) references car_models(id)
);

insert into car_brands (title) 
values ("NISSAN"),
("Toyota"),
("Mazda");

insert into car_models (carBrandId, title) 
values (1, "Rogue"),
(1, "Juke"),
(2, "Corolla"),
(2, "Camry"),
(3, 'MX-5 RF'),
(3, 'MX-5 Roadster');

insert into users (firstName, lastName, email, password) 
values ("Sarah", "Connor", "sarah@gmail.com", "12345"),
("Jonh", "Connor", "jonh@gmail.com", "qwerty"),
("Terminator", 'T-1000', "hastalavistababy@gmail.com", "smile");

insert into cars (userId, carBrandId, carModelId, mileage, initialMileage) 
values (1, 1, 2, 150000, 50000),
(2, 2, 3, 87000, 2400),
(3, 3, 6, 38000, 0);