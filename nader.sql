
CREATE DATABASE store;

use store; 
create table countries(
code int primary key,
name varchar(20) unique,
continent_name varchar(20) not null
); 



use store;
CREATE TABLE users(
    id int primary key,
    fulltName varchar(20) ,
     gmail varchar(20) unique,
     gender char(15) check(gender="m"or gender="f"),
  date_of_birth varchar(15),
     created_at datetime,
     country_code int,
     foreign key(country_code) references customer (code)
     ); 



USE store;
CREATE TABLE orders(
    id int primary key,
    user_id int,
 status varchar (6),
     created_at datetime,
 foreign key (user_id) references users(id)
	); 



    USE store;
    CREATE TABLE order_products(
order_id int,
product_id int ,
  quantity int default 0,
  primary key (order_id, product_id),
  foreign key (order_id) references orders(id),
  foreign key (product_id) references products(id)

   
USE store;

    CREATE TABLE prducts(
 id int primary key,
 name varchar(10) not null,
 price int default 0,
status_  varchar (10) check(status_="v"or status_="f"),
created_at  datetime
   
);


USE store;
INSERT INTO countries ( code,name,continent_name)
VALUES ('89987', 'nader', 'moon');

INSERT INTO users (id,fulltName,gmail,gender,created_at)
VALUES('976','hadi','hade145261@gmail.com','fimle',22-90);

INSERT INTO orders (user_id,status,created_at)
VALUES('9996','expir',23-07);

INSERT INTO prducts(name,price, status,created_at)
VALUES('milk','30',val,01-08);


INSERT INTO order_products prducts( quntity)
VALUES('bnoo');

UPDATE countries 
SET name = 'saad', Cont= 'moool


    
