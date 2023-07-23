## Creating a Database
Create database assignment_db;

## Using DB
use assignment_db;

## Creating DB
CREATE TABLE store_sales(
month varchar(20),
prod_name varchar(25),
sales int)

## Inserting values
INSERT into store_sales(month,prod_name,sales) VALUES ('Jan','Fruits',45000),
('Jan','Vegetables',67000),
('Jan','Dairy',55000),
('Feb','Fruits',42000),
('Feb','Vegetables',32000),
('Feb','Dairy',52000),
('Jan','Fruits',61000),
('Jan','Vegetables',43000),
('Jan','Dairy',92000);

## Printing Values
select * from store_sales;


