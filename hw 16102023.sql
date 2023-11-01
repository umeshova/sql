create database university;


CREATE TABLE address 
(
id int not null primary key auto_increment,
country varchar(30),
city varchar(30),
street varchar(30),
number int
);

drop table address;

CREATE table person (
id int not null auto_increment,
firstname varchar(40),
lastname varchar(40),
phonenumber int,
birthdate int,
addressid int,
primary key (id),
foreign key (addressid) REFERENCES address(id)
);

drop table person;

create table student (
id int not null auto_increment,
personid int,
description varchar(40),
primary key (id),
foreign key (personid) REFERENCES person(id)
);

drop table student;

create table teacher (
id int not null auto_increment,
position varchar(40),
personid int,
primary key (id),
foreign key (personid) REFERENCES person(id)
);

drop table teacher;

create table course (
id int not null auto_increment,
name varchar(40),
credits int,
description varchar(40),
teacherid int,
primary key (id),
foreign key (teacherid) REFERENCES teacher(id)
);

drop table course;

select * from address;

insert into address (country,city,street) values ("KZ","Astana","Abaya");
insert into address (country,city,street) values ("RUS","Moscow","Lenina");
insert into address (country,city,street) values ("KG","Bishek","Alma");

delete from address where id=2;

insert into person (firstname,lastname,phonenumber,birthdate,addressid) values ("Aina","Alieva",45632,4562,1);
insert into person (firstname,lastname,phonenumber,birthdate,addressid) values ("Olya","Ivanova",45698,8596,3);
insert into person (firstname,lastname,phonenumber,birthdate,addressid) values ("Olya","Ivanova",45698,8596,3);

select * from course;
delete from person where id=3;

insert into student (personid,description) values (1,"great");
insert into student (personid,description) values (4,"bad");
insert into student (personid,description) values (5,"free");

insert into teacher (position,personid) values ("big",1);
insert into course(name,credits,description,teacherid) values ("painting",1,"nice",1);
