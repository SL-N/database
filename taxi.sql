CREATE DATABASE taxi;

create table Сlient (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	phone VARCHAR(50) NOT NULL
);
insert into Сlient (id, name, phone) values (1, 'Yana', '+62 (339) 569-8585');
insert into Сlient (id, name, phone) values (2, 'Liam', '+34 (313) 820-3994');
insert into Сlient (id, name, phone) values (3, 'Kira', '+86 (603) 972-6221');
insert into Сlient (id, name, phone) values (4, 'Janeva', '+86 (800) 604-0880');
insert into Сlient (id, name, phone) values (5, 'Bryana', '+358 (139) 772-4021');
insert into Сlient (id, name, phone) values (6, 'Enrico', '+261 (554) 722-0774');
insert into Сlient (id, name, phone) values (7, 'Priscilla', '+420 (895) 707-6594');
insert into Сlient (id, name, phone) values (8, 'Sascha', '+380 (630) 309-5350');
insert into Сlient (id, name, phone) values (9, 'Breanne', '+230 (436) 200-4443');
insert into Сlient (id, name, phone) values (10, 'Brigham', '+30 (333) 467-7616');

create table Driver (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	phone VARCHAR(50) NOT NULL
	car_name VARCHAR(50) NOT NULL
);
insert into Driver (id, name, phone, car_name) values (1, 'Bob','+30 (833) 467-7616', 'Dodge');
insert into Driver (id, name, phone, car_name) values (2, 'Chalmers', '+3 (333) 467-7616'. 'Mercedes-Benz');
insert into Driver (id, name, phone, car_name) values (3, 'Maud', '+32 (983) 467-7616', 'GMC');
insert into Driver (id, name, phone, car_name) values (4, 'Rory','+12 (333) 467-7616', 'Aston Martin');
insert into Driver (id, name, phone, car_name) values (5, 'Jorie','+30 (333) 765-7616', 'Mercedes-Benz');
insert into Driver (id, name, phone, car_name) values (6, 'Roseanna', '+30 (333) 467-7066', 'Pontiac');
insert into Driver (id, name, phone, car_name) values (7, 'Sascha','+30 (333) 042-7616', 'Chevrolet');
insert into Driver (id, name, phone, car_name) values (8, 'Jacinda','+36 (333) 467-7616', 'Chevrolet');
insert into Driver (id, name, phone, car_name) values (9, 'Erna','+30 (938) 467-7616', 'Cadillac');
insert into Driver (id, name, phone, car_name) values (10, 'Dima','+30 (333) 467-9120', 'Acura');

create table Car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	Car VARCHAR(50) NOT NULL,
	num VARCHAR(100) NOT NULL
);
insert into Car (id, Car, num) values (1, 'Cadillac','AO762K');
insert into Car (id, Car, num) values (2, 'Acura', 'BH719Y');
insert into Car (id, Car, num) values (3, 'Dodge', 'CK319A');
insert into Car (id, Car, num) values (4, 'GMC', 'XC975B');
insert into Car (id, Car, num) values (5, 'Aston Martin', 'TH170K');
insert into Car (id, Car, num) values (6, 'Mercedes-Benz', 'OO999O');
insert into Car (id, Car, num) values (7, 'Pontiac', 'PH110P');
insert into Car (id, Car, num) values (8, 'Chevrolet', 'HH419T');
insert into Car (id, Car, num) values (9, 'Chevrolet', 'MY710M');
insert into Car (id, Car, num) values (10, 'GMC', 'HE491O');


create table Order (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	date DATE NOT NULL,
	time VARCHAR(50) NOT NULL,
	street VARCHAR(50) NOT NULL
);
insert into Order (id, date, time, street) values (1, '2021-09-26', '1:01 PM', 'Fulton Street');
insert into Order (id, date, time, street) values (2, '2021-09-26', '1:21 PM', 'Park Avenue');
insert into Order (id, date, time, street) values (3, '2021-09-26','1:28 AM', 'Lafayette Avenue');
insert into Order (id, date, time, street) values (4, '2021-09-26', '8:02 PM', 'Dyer Avenue ');
insert into Order (id, date, time, street) values (5, '2021-09-26', '5:04 PM', 'Point Boulevard');
insert into Order (id, date, time, street) values (6, '2021-09-26', '7:33 AM', 'Crosby Street');
insert into Order (id, date, time, street) values (7, '2021-09-26', '9:27 PM', 'Broadway');
insert into Order (id, date, time, street) values (8, '2021-09-26', '4:57 PM', 'East 64th Street');
insert into Order (id, date, time, street) values (9, '2021-09-26', '11:32 PM', 'Great Jones St');
insert into Order (id, date, time, street) values (10, '2021-09-26', '7:29 AM', 'West 70th Street');
