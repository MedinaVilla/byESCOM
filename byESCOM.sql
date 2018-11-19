create database byESCOM;
use byESCOM;

create table usuario(
idUsuario int(100) primary key auto_increment,
boleta varchar(12),
nombre varchar(30),
contrasenia varchar(20),
idTipoUsuario int, 
foreign key (idTipoUsuario) 
REFERENCES tipoUsuario(idTipoUsuario));

create table tipoUsuario(idTipoUsuario int(1) primary key, tipoUsuario varchar(10));
insert into tipoUsuario values(1,'Registrado');
insert into tipoUsuario values(2,'Moderador');
SELECT *FROM tipoUsuario;
select * from usuario;
describe tipoUsuario;
show full tables;
