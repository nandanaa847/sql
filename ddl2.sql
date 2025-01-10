create database watch;

use watch;

create table watchdetails(brand varchar(10),
warranty char(10),
weight float,
ratings double,
order_ID bigint,
delivery_date date,
price int,
color varchar(7),
water_resistance char(10),
display varchar(10));

insert into watchdetails values('titan','2years',100.2,4.35,241525245,'2025-01-01',5000,'silver','yes','analogue');
select * from watchdetails;

insert into watchdetails (brand,color) values('casio','gold');

update watchdetails set color='gold' where order_ID=241525245;
update watchdetails set color='blue';
update watchdetails set color='gold' , warranty='3years' where order_ID=241525245;

delete from watchdetails where brand='casio';
desc watchdetails;

create database bankaccount;

use bankaccount;

create table accountdetails(account_holder_name varchar(10),
ifsc_code char(10),
balance double,
UPI_ID bigint,
mobile_num bigint,
opening_date date,
age int,
account_type varchar(7),
account_ID char(10),
transaction_limit int);

create database music;

use music;

create table musicdetails(song_name varchar(10),
file_format char(10),
ratings float,
file_size double,
total_collection bigint,
total_listeners bigint,
release_date date,
singer_name varchar(15),
language char(10),
duration_in_sec int);

insert into musicdetails values('paravas','MP3',4.5,5.55,747626,634167278,'2011-09-19','sonunigam','kannada',236);

select * from musicdetails;

insert into musicdetails (song_name,language) values('hsff','kannada');
desc musicdetails;

create database employee;

use employee;

create table employeedetails(employee_name varchar(10),
address char(10),
height float,
salary double,
employee_ID bigint,
contact_number bigint,
salary_date date,
date_of_birth date,
email varchar(20),
age int);

desc employeedetails;

insert into accountdetails values('nandana','hdfc5342',5000.35,6352425,7363425263,'2022-12-22',20,'current','53525626',50000);

select * from accountdetails;
insert into accountdetails (age,account_holder_name) values(22,'poorna');
desc accountdetails;
use watch;

rename table watchdetails to watchinformation;

use music;

rename table musicdetails to songdetails;

use bankaccount;

drop table accountdetails;

use watch;

alter table watchinformation add column emi int;
alter table watchinformation add column material varchar(20);
alter table watchinformation add column movement char(7);
alter table watchinformation add column watch_code varchar(20);

desc watchinformation;

use music;

alter table songdetails add column budget int;
alter table songdetails add column album_name varchar(20);
alter table songdetails add column state char(7);
alter table songdetails add column genre varchar(20);

alter table songdetails modify column budget bigint;


desc songdetails;

use employee;

alter table employeedetails add column department_ID bigint;
alter table employeedetails add column department_name varchar(20);
alter table employeedetails add column manager_ID char(7);
alter table employeedetails add column manager_name varchar(20);

desc employeedetails;

use watch;

alter table watchinformation drop column order_ID;
alter table watchinformation drop column ratings;

alter table watchinformation rename column price to cost;

desc watchinformation;

use music;

alter table songdetails drop column file_format;
alter table songdetails drop column file_size;

alter table songdetails rename column language to lang;

alter table songdetails rename column release_date to date;


desc songdetails;

use employee;

alter table employeedetails drop column email;
alter table employeedetails drop column salary_date;

alter table employeedetails modify column address varchar(20);
alter table employeedetails modify column employee_ID int;

alter table employeedetails rename column date_of_birth to D_O_B ;
alter table employeedetails rename column department_name to dept_name ;

desc employeedetails;