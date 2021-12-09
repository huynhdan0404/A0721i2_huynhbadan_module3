create database quanlyxuatnhaphang;
use quanlyxuatnhaphang;

create table nhacc(
mancc int auto_increment,
tenncc varchar(120),
diachi varchar(225),
sdt varchar(50),
primary key (mancc)
);

create table dondh(
sodh int primary key,
ngaydh date,
mancc int,
foreign key (mancc) references nhacc(mancc)
);

create table vattu(
ma_vtu int auto_increment primary key,
ten_vtu varchar(225)
);

create table phieuxuat(
sopx int primary key,
ngayxuat date
);

create table phieunhap(
sopn int primary key,
ngaynhap date
);

create table vattu_phieuxuat (
ma_vtu int,
sopx int,
primary key (ma_vtu,sopx),
foreign key (ma_vtu) references vattu(ma_vtu),
foreign key (sopx) references phieuxuat(sopx)
);

create table vattu_phieunhap (
ma_vtu int,
sopn int,
primary key (ma_vtu,sopn),
foreign key (ma_vtu) references vattu(ma_vtu),
foreign key (sopn) references phieunhap(sopn)
)