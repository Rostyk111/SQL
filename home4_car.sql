create database auto_show;
use auto_show;
create table Car (
марка varchar(50) unique primary key,
модель varchar(50) not null,
price int(50) not null,
car_id int(20) not null
);
 create table Owner (
 owner_id int (20) not null,
 car_id int(20) not null,
 place_id int(20) not null,
 імя varchar (50) not null
 );
 
 create table Car_charasteristics (
 car_id int(20) not null,
 transmision_type varchar (4) not null,
 engine_id int (20) not null,
 interior_id int(20) not null,
 look_id int(20) not null,
 body_type varchar (20) not null
 );
 
create table Engine (
id  int (20) not null,
power int (100) not null,
size int(10) not null,
fuel varchar(50) not null
);

create table Look (
look_id int(20) not null,
fettle varchar (20),
damage varchar (25),
interior varchar (25)
);

create table Place (
place_id int(20) not null,
country varchar(20) not null,
city  varchar(50)
);
 
 create table Interior(
 interior_id int(20) not null,
 materials varchar (30),
 seats varchar (25)
 );
 
alter table Car add foreign key (car_id) references Owner (car_id);
alter table Place add foreign key (place_id) references  Owner (place_id);
 alter table Engine add foreign key (engine_id) references Car_charasteristic (engine_id);
 alter table Intetior add foreign key (interior_id) references Car_charasteristics (interior_id);
 alter table Look add foreign key (look_id) references Car_charasteristics (look_id);
 alter table Car__charasteristics add foreign key (car_id) references Car  (car_id);
 