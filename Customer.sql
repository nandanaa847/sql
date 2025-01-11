create database customer;
use customer;

create table hotel1(hotel_id int primary key,
hotel_name varchar(15) not null,
hotel_location char(15) );
desc hotel1;

create table hotel2(hotel_id int primary key,
hotel_name varchar(15) not null,
hotel_location char(14) );
desc hotel2;
select * from hotel2;

set autocommit=0;

insert into hotel2 values(11,'ramgad','MG road');
commit;
rollback;

set autocommit=0;

savepoint newcustomer;
insert into hotel2 values(12,'udupi','agrahara');
insert into hotel2 values(13,'vaishali','mathikere');
insert into hotel2 values(14,'taj','BM Road');
insert into hotel2 values(15,'empire','channpatna');

update hotel2 set hotel_location='maddur' where hotel_id=15;
rollback to newcustomer;
select * from hotel2;
commit;