create database truyum;

use truyum;

create table menu_item(
menu_id int(11) NOT NULL,
menu_name varchar(100) not null,
menu_price decimal(8,2) not null,
menu_active varchar(3) not null,
menu_dol date not null,
menu_category varchar(45) not null,
menu_free_del varchar(3)not null,
primary key(menu_id));

create table carts(
cart_id int(11) NOT NULL,
cart_name varchar(100) not null,
cart_price decimal(8,2) not null,
cart_free_del varchar(3)not null,
user_id int(11) references users.user_id,
primary key(cart_id));

create table users(
user_id int(11) Not null,
user_name varchar(100) not null);