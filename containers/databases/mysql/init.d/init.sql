create database users;
use users;

create table users(
	userid int auto_increment primary key,
    username varchar(40) not null,
    password varchar(64) not null);