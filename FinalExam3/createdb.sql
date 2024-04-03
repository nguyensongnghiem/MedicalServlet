create database  if not exists medicalReCord ;
create table medicalReCord (
	id int primary key auto_increment,
    name varchar(50),
    price float,
    description varchar(200),
    patient varchar(50)
);
insert into medicalReCord(id, name, price, description,patient ) values
 (1, "Macbook", 200, "Macbook air 2023", "Apple"),
 (2,"Iphone", 900, "Điện thoại", "Apple"),
 (3,"Samsum S24", 800, "Điện thoại", "Samsung"),
 (4,"Xiaomi S20", 300, "Điện thoại", "Xiaomi");
 