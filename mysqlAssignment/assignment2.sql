use assignment_db;

##Create table A

Create table A(
stud_id varchar(50),
user_name varchar(20),
Occupation varchar(20),
Address varchar(20),
State varchar(20),
Country varchar(20)
);

##Insert values in A

insert into A values 
(UUID(),'Chandler','Transponster','15 Yemen Road','Yemen','Yemen'),
(UUID(),'Monica','Chef','Apartment 52','New Jersey','USA'),
(UUID(),'Joey','Actor','Apartment 53','New Jersey','USA'),
(UUID(),'Ross','Dinosaurs','15 Yemen Road','Yemen','Yemen'),
(UUID(),'Rachel','Faishon','Apartment 52','New Jersey','USA'),
(UUID(),'Phoebe','Masseuse','Apartment 53','New Jersey','USA');

Select * from A;

#Create Table B

Create table B(
B_id varchar(50),
A_id varchar(50),
name varchar(20),
Country varchar(20),
hobby varchar(20),
occupation varchar(20),
superpower varchar(30)
);

##Insert values in B
insert into B values 
(UUID(),'6358b7da-3013-11ee-9c1a-6c02e0974165','Ross','USA','Dinosaurs','Professor','Getting married'),
(UUID(),'6358de92-3013-11ee-9c1a-6c02e0974165','Rachel','USA','Shopping','Fashion', 'Crying'),
(UUID(),'6358e08a-3013-11ee-9c1a-6c02e0974165','Phoebe','USA','Singing','masseuse', 'psychic');

## a) Right join
Select * from B Right join A on A.stud_id=B.A_id;

## b) Left join
Select * from A Left join B on A.stud_id=B.A_id;

## c) Inner Join
Select * from A Inner join B on A.stud_id=B.A_id;

## d) Intersection
Select * from A where A.stud_id in (select A_id from B);

## e) Union
Select user_name,Occupation,Country from A 
Union
Select name,occupation,country from B;

## f) Union All
Select user_name,Occupation,Country from A 
Union all
Select name,occupation,country from B;


