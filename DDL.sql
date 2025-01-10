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

desc watchdetails;
use watch;

rename table watchdetails to watchinformation;

create database music;

use music;

create table musicdetails(song_name varchar(10),
file_format char(10),
ratings float,
file_size double,
total_collection bigint,
total_listeners bigint,
release_date date,
singer_name varchar(7),
language char(10),
duration_in_sec int);

desc musicdetails;

use music;

rename table musicdetils to songdetails;

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

desc accountdetails;

use bankaccount;

drop table accountdetails;

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

desc watchinformation;

use music;

alter table songdetails drop column file_format;
alter table songdetails drop column file_size;

desc songdetails;

use employee;

alter table employeedetails drop column email;
alter table employeedetails drop column salary_date;

desc employeedetails;