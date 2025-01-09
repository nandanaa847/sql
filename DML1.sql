create database application;
use application;
create table applicationdetails(app_name varchar(30),
ratings float,
country char(8),
manufacturer_name varchar(40),
total_users bigint,
app_size double,
age_limit int,
release_date date,
review varchar(20),
required_OS char(20));
desc applicationdetails;
insert into applicationdetails values('watsapp',4.5,'America','mark_zuckerberg',500000000,48.02,18,'2009-11-22','good','Android 5 and up');
select * from applicationdetails;
insert into applicationdetails (app_name,manufacturer_name,total_users,ratings,country) values('inshot','azar iqbal',23910288,3.5,'china');


create database mobilephone;
use mobilephone;
create table mobilephonedetails(product_name varchar(30),
ratings float,
processor char(12),
color varchar(40),
price bigint,
product_ID bigint,
discount_in_per int,
delivery_date date,
warranty varchar(20),
storage char(20));
desc mobilephonedetails;
insert into mobilephonedetails values('iphone 15 pro max',4.8,'A17prochip','white',150000,536256,10,'2025-01-01','one year','128GB');
select * from mobilephonedetails;
insert into mobilephonedetails (color,price,product_ID,warranty,delivery_date) values('black',200000,635635,'three years','2025-01-10');


create database temple;
use temple;
create table templedetails(temple_name varchar(30),
distance_in_km float,
 year_of_establishment char(20),
 god_name varchar(40),
 contact_information bigint,
 special_darshan_price int,
 visiting_date date,
 timings char(30),
 location char(20),
 district_name varchar(20));
desc templedetails;
insert into templedetails values('murudeshwar',457.2,'16th century','shiva',02778388,300,'2025-01-15','6am to 1pm and 3 to 8pm','bhatkal','uttar kannada');
select * from templedetails;
insert into templedetails (temple_name,district_name,god_name,distance_in_km,contact_information) values('Isckon','bengaluru','krishna',40,7367364);
create database product;
use product;


create table productdetails(product_name varchar(30),
weight float,
color varchar(40),
product_id bigint,
material varchar(40),
price int,
order_date date,
category varchar(20),
warranty char(20));
desc productdetails;
insert into productdetails values('wooden chair',4.5,'blue',653465,'solid shesham',5667,'2024-12-22','furniture','1 year');
select * from productdetails;
insert into productdetails (weight,color,product_id,warranty,price) values(5.5,'purple',635636,'2 years',6000);