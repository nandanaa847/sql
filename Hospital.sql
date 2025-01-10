create database doctor;
use doctor;
create table doctordetails(doctor_id char(5) primary key,
doctor_name varchar(30)not null,
specialization varchar(30) unique,
consultation_fee int,
experience char(8));

desc doctordetails;
insert into doctordetails values('D101','dr.barathi','dermatologist',910,'5years');
insert into doctordetails values('D102','dr.divya','cardiologist',5000,'20years');
insert into doctordetails values('D103','dr.anjali','eye speacialist',2100,'14years');
insert into doctordetails values('D104','dr.pooja','neurologist',6500,'8years');
insert into doctordetails values('D105','dr.rohit','psychiatrist',1500,'3years');
select * from doctordetails;

create table patientdetails(patient_id char(5) primary key,
patient_name varchar(30)not null,
age int,
health_condition varchar(30),
doctor_id char(5) , foreign key(doctor_id) references doctordetails(doctor_id));
desc patientdetails;
insert into patientdetails values('P201','mohan',24,'hairfall','D101');
insert into patientdetails values('P202','shiv',60,'chest pain','D102');
insert into patientdetails values('P203','rakshitha',18,'shortsightedness','D103');
insert into patientdetails values('P204','john',39,'migrane','D104');

select * from patientdetails;



create table appointmentinf(appointment_id int primary key,
appointment_date date,
patient_id char(5) , foreign key(patient_id) references patientdetails(patient_id));
desc appointmentinf;
insert into appointmentinf values(1,'2025-01-09','P201');
insert into appointmentinf values(2,'2025-01-09','P202');
insert into appointmentinf values(3,'2025-01-09','P203');
insert into appointmentinf values(4,'2025-01-09','P204');
select * from appointmentinf;

select * from doctordetails cross join patientdetails cross join appointmentinf;
select count(*) from doctordetails cross join patientdetails cross join appointmentinf;



select * from doctordetails as d inner join  patientdetails as p where d.doctor_id = p.doctor_id ;
select * from    patientdetails as p inner join appointmentinf as a where  a.patient_id=p.patient_id  ;

select * from doctordetails as d inner join  patientdetails as p inner join appointmentinf as a where d.doctor_id = p.doctor_id and  a.patient_id=p.patient_id;


