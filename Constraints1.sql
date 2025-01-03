create database departmentt;

use departmentt;

create table departmentinfo(dept_id int primary key,
dept_name varchar(30) not null);


create table employeeinfo(emp_id int primary key,
emp_name varchar(15) not null,emp_age int check(emp_age>21),dept_id int,foreign key(dept_id) references departmentinfo(dept_id));

desc departmentinfo;
desc employeeinfo;

insert into departmentinfo values(11,'Marketing');
insert into departmentinfo values(12,'sales');

insert into employeeinfo values(21,'Chinmaye',23,11);
insert into employeeinfo values(22,'poorna',24,11);
insert into employeeinfo values(23,'vedika',25,12);
insert into employeeinfo values(24,'neethu',26,12);

select * from departmentinfo;
select * from employeeinfo;


create table stuinfo(stu_id int primary key,
stu_name varchar(30) not null);

create table courseinfo(course_id int primary key,
course_name varchar(30),course_durationinmonths int check(course_durationinmonths>3),stu_id int,foreign key(stu_id) references stuinfo(stu_id));

create table assignmentinfo(ass_id int primary key,
ass varchar(40) not null,topic varchar(20) not null,course_id int,foreign key(course_id) references courseinfo(course_id)); 

desc stuinfo;
desc courseinfo;
desc assignmentinfo;

insert into stuinfo values(31,'navya');

insert into courseinfo values(72,'full stack',5,31);

insert into assignmentinfo values(110,'primary key and foreign key','contraints',72);

select * from stuinfo;
select * from courseinfo;
select * from assignmentinfo;