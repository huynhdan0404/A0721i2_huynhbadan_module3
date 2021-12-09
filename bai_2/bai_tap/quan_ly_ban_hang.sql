create database quanlybanhang;
use quanlybanhang;

create table customer(
cid int auto_increment primary key,
cname varchar(120),
cage int
);

create table `order`(
oid int auto_increment primary key,
cid int,
odate date,
oprice double,
foreign key (cid) references customer(cid)
);

create table product(
pid int auto_increment primary key,
pname varchar(225),
pprice double
);

create table oderdetail(
oid int,
pid int,
odqty int primary key,
foreign key (oid) references `order`(oid),
foreign key (pid) references product(pid)
)