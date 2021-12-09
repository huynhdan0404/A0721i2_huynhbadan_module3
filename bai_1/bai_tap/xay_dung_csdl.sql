create database bai_1;
use bai_1;
create table class(
id int,
`name` varchar(50)
);
insert into class (id,`name`) values (1,"tuan"),(2,"nam");


create table teacher(
id int,
`name` varchar(50),
age int,
country varchar(225)
);
insert into teacher values (1,"ha",23,"da nang"),(2,"ngoc",25,"ha noi");