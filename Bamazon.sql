drop database if exists bamazon_db;
create database bamazon_db;
use bamazon_db;

create table products (
	item_id int not null auto_increment,
	product_name varchar(100),
	department_name varchar(100),
	price decimal(10,2) not null,
	stock_quantity int(100),
	primary key (item_id)
);

select * from products;

insert into products(product_name, department_name, price, stock_quantity) values("Toilet Paper", "Household", "8.99", "230"), ("Paper Towels", "Household", "12.99", "120"),
("Dish Soap", "Household", "4.99", "56"), ("Shampoo", "Health and Beauty", "2.99", "15"), ("Conditioner", "Health and Beauty", "3.15", "2"),
("iPhone x", "Electronics", "956.30", "98"), ("Laptop", "Electronics", "632.40", "23"), ("Backpack", "School Supplies", "15.98", "4"),
("Water Bottle", "Kitchen", "4.99", "98"), ("Pan", "Kitchen", "15.99", "3");