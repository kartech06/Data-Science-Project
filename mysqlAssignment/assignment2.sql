use assignment_db;

##Create table A

Create table A(
stud_id varchar(50),
user_name varchar(20),
Address varchar(20),
State varchar(20),
Country varchar(20)
);

##Insert values in A

insert into A values 
(UUID(),'Chandler','15 Yemen Road', ,'Yemen','Yemen'),
(UUID(),'Monica','Apartment 52','New Jersey','USA'),
(UUID(),'Joey','Apartment 53','New Jersey','USA');

Select * from A;

#Create Table B

Create table B(
B_id varchar(50),
A_id varchar(50),
hobby varchar(20),
occupation varchar(20),
superpower varchar(30)
);

##Insert values in B
insert into B values 
(UUID(),'f9556ded-2d33-11ee-aef0-6c02e0974069','Dinosaurs','Professor','Getting married'),
(UUID(),'f95639f8-2d33-11ee-aef0-6c02e0974069','Shopping','Fashion', 'Crying'),
(UUID(),'f9563d44-2d33-11ee-aef0-6c02e0974069','Singing','masseuse', 'psychic');

## a) Right join
Select * from A Right join B on A.stud_id=B.A_id;

## b) Left join
Select * from A Left join B on A.stud_id=B.A_id;

## c) Inner Join
Select * from A Inner join B on A.stud_id=B.A_id;

## d) Intersection
Select * from A where A.stud_id in (select A_id from B);

## e) Union
Select * from A 
Union
Select * from B;

## f) Union All
Select * from A 
Union all
Select * from B;


