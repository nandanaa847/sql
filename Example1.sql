create database patient;
use patient;

create table patientdetails(name varchar(20),
weight float,
success_rate double,
address char(10),
ID_num bigint,
appointment_date date,
total_cost int);

desc patientdetails;


create database student;
use student;

create table studetails(name varchar(20),
weight float,
height double,
sub_code char(10),
stu_id bigint,
admission_date date,
age int);

desc studetails;


create database orders;
use orders;

create table saree(type varchar(20),
length float,
width double,
order_code char(10),
product_ID bigint,
delivery_date date,
quantity int);

desc saree;