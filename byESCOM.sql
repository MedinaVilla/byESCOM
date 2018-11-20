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
drop table materias;
create table materias(idMateria int primary key auto_increment, titulo varchar(30), descripcion varchar(1000), idTipoMateria int(3),foreign key (idTipoMateria) REFERENCES tipoMateria(idTipoMateria));
insert into materias (titulo,descripcion,idTipoMateria)values('Ing. Sociedad y Etica','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',1);
insert into materias (titulo,descripcion,idTipoMateria)values('Fisica','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum2',1);
insert into materias (titulo,descripcion,idTipoMateria)values('Circuitos y redes Neuronales','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum3',2);
insert into materias (titulo,descripcion,idTipoMateria)values('Robotica automatizada','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum4',2);
insert into materias (titulo,descripcion,idTipoMateria)values('Algebra','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum5',1);
insert into materias (titulo,descripcion,idTipoMateria)values('Redes de Computacion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum6',3);
insert into materias (titulo,descripcion,idTipoMateria)values('Trabajo Terminal','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum7',4);
drop table materias;
create table tipoMateria(idTipoMateria int primary key, tipoMateria varchar(20));
insert into tipoMateria values('1','Basica');
insert into tipoMateria values('2','Programacion');
insert into tipoMateria values('3','Optativa');
insert into tipoMateria values('4','Terminal');
drop table tipoMateria;
select * from usuario;
select *from tipoMateria;
describe tipoUsuario;
show full tables;
select * from materias;

select m.idMateria, m.titulo, m.descripcion, t.tipoMateria
from materias m
inner join tipoMateria t
on m.idTipoMateria = t.idTipoMateria;

select e.idExperiencia, e.nombreAlumno,e.contenido,e.fechaEnvio,t.tipoExperiencia 
from experiencia e inner join tipo_experiencia t on e.tipoExperiencia= t.idTipoExperiencia; 

create table tipo_experiencia(
	idTipoExperiencia int(2) primary key,
    tipoExperiencia varchar(30)
);

create table estado(
	idEstado int(2) primary key,
    estado varchar(30)
);
drop table experiencia;
create table experiencia(
	idExperiencia int(2) primary key auto_increment,
    contenido varchar(1000),
    nombreAlumno varchar(50),
    fechaEnvio timestamp,
    tipoExperiencia int(2),
    estado int(2),
    foreign key (tipoExperiencia) references tipo_experiencia(idTipoExperiencia),
    foreign key (estado) references estado(idEstado)
);

insert into experiencia(contenido,nombreAlumno,fechaEnvio,tipoExperiencia,estado) 
values('En la cafeteria, no me gusta que la gente se forme de manera fila india ya que cuando esta lloviendo todo se jode',
'PacoVilla','2008-05-31 20:00:00', 1,2) ; 
insert into experiencia(contenido,nombreAlumno,fechaEnvio,tipoExperiencia,estado) 
values('En el club de Ajderez, no me gusta que la gente se forme de manera fila india ya que cuando esta lloviendo todo se jode',
'MariaPineda','2009-05-31 20:00:00', 2,2) ; 
select *from experiencia where estado  = 1;
insert into estado values(1, "Aceptado");
insert into estado values(2, "Revisión");

insert into tipo_experiencia values(1, "Cafetería");
insert into tipo_experiencia values(2, "Clubes");
insert into tipo_experiencia values(3, "Cafetería");
insert into tipo_experiencia values(4, "Escolar");
insert into tipo_experiencia values(5, "Trámites");

delete from experiencia where idExperiencia = "3";

update experiencia set estado = 1 where idExperiencia = 5;