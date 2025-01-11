create database mobilephone;

use mobilephone;

create table mobilephonedetails(mobile_id int primary key,
mobile_name char(30) not null unique,
battery int check(battery>3000),
screen_size float,
weight double,
price int check(price>8000) not null,
brand varchar(20) not null,
mobilenumber bigint not null,
mfd date,
color char(10) unique);

desc mobilephonedetails;
select * from mobilephonedetails;

delete from mobilephonedetails where mobile_id=116;

insert into mobilephonedetails values(111,'oppo a78 5g',5000,16.6,188.8,11899,'oppo',63673728,'2022-12-12','black');
insert into mobilephonedetails values(112,'Redmi Note 14 5G',5110,6.6,190.2,19999,'xiaomi',6473878687,'2021-11-11','blue');
insert into mobilephonedetails values(113,'vivo Y29 5G',5500,13.6,140.8,15899,'vivo',9584747837,'2020-12-02','white');
insert into mobilephonedetails values(114,'realme gt 7 pro',6000,16.6,150.4,65999,'realme',9373526788,'2023-10-01','gold');
insert into mobilephonedetails values(115,'one plus 13',5000,10.6,145.8,62000,'one plus',9844257488,'2022-09-19','green');
insert into mobilephonedetails values(116,'Google Pixel 9a',4500,14.6,135.7,41578,'google',6362092168,'2021-08-12','red');
insert into mobilephonedetails values(117,'Samsung Galaxy S25 Ultra',5000,11.2,120.9,116317,'samsung',9611320879,'2022-08-29','olive');
insert into mobilephonedetails values(118,'Motorola Moto Edge 40',6500,9.6,110.4,58000,'motorola',9686277634,'2023-05-02','rose gold');
insert into mobilephonedetails values(119,'Sony Xperia 2 IV',4000,8.4,115.4,74917,'sony',9900733505,'2020-11-22','charcoal');
insert into mobilephonedetails values(120,'Nokia X60 Pro',4500,17.6,120.3,41000,'nokia',8151973319,'2021-10-24','ivory');
insert into mobilephonedetails values(121,'Lenovo Legion Phone 4',5500,12.9,170.8,82917,'lenovo',8377626267,'2024-12-11','saffron');
insert into mobilephonedetails values(122,'Nothing Phone (3)',4500,10.8,175.8,54150,'nothing',9844257654,'2021-03-11','lavender');
insert into mobilephonedetails values(123,'Poco X7 Pro',6500,15.5,190.5,29750,'poco',6362091234,'2022-04-14','slate gray');
insert into mobilephonedetails values(124,'Lava Agni 3 5G',4000,18.7,195.6,19999,'lava',6361763112,'2020-03-03','dark blue');
insert into mobilephonedetails values(125,'Infinix Zero Ultra 5G',6000,17.8,165.3,35560,'infinix',8373663782,'2021-12-22','turquoise');


select * from mobilephonedetails where price>=30000;
select * from mobilephonedetails where price<=30000;
select * from mobilephonedetails where battery>5500;
select * from mobilephonedetails where weight<160.8;
select mobile_name as mob_name from mobilephonedetails;
select mobile_id,brand,screen_size from mobilephonedetails;
select * from mobilephonedetails where price between 20000 AND 50000;
select * from mobilephonedetails where price not between 20000 AND 50000;
select * from mobilephonedetails where brand in ('oppo','realme');
select * from mobilephonedetails where brand not in ('oppo','realme');
select* from mobilephonedetails where color not like 'turquoise%';
select* from mobilephonedetails where color  like '%charcoal';
select* from mobilephonedetails where color like '_saffron%';
select* from mobilephonedetails where color like '__green%';
select*from mobilephonedetails where screen_size is null;
select*from mobilephonedetails where color is not null;
select*from mobilephonedetails where color  like '%white' OR weight<160.8;
select*from mobilephonedetails where battery=6000  AND brand='lenovo';
select*from mobilephonedetails where NOT price= 82917 ;
select*from mobilephonedetails order by price;
select*from mobilephonedetails order by screen_size desc;