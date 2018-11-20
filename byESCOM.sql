drop database if exists byESCOM;
create database byESCOM;
use byESCOM;

create table tipo_experiencia(
	idTipoExperiencia int(2) primary key,
    tipoExperiencia varchar(30)
);

create table estado(
	idEstado int(2) primary key,
    estado varchar(30)
);

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
create table tipoUsuario(
	idTipoUsuario int(1) primary key,
	tipoUsuario varchar(10)
);

create table usuario(
idUsuario int(100) primary key auto_increment,
nombreUsuario varchar(30),
contrasenia varchar(20),
idTipoUsuario int, 
foreign key (idTipoUsuario) 
REFERENCES tipoUsuario(idTipoUsuario));

create table tipoMateria(
	idTipoMateria int primary key, 
    tipoMateria varchar(40)
);

create table materia(idMateria int primary key auto_increment, 
	titulo varchar(30), 
	descripcion varchar(1000), 
	idTipoMateria int(3),
	foreign key (idTipoMateria) REFERENCES tipoMateria(idTipoMateria));

create table reporte(
	idReporte int(2) primary key auto_increment,
    submodulo varchar(30),
    explicacion varchar(100),
    metodo varchar(100),
    fechaEnvio timestamp default current_timestamp on update current_timestamp
);

create table estadistica(
	idEstadistica int(2) primary key auto_increment,
    pregunta1 varchar(5),
    pregunta2 varchar(5),
    pregunta3 varchar(5),
    pregunta4 varchar(5),
    pregunta5 varchar(5)
);

insert into tipoUsuario values(1, "Moderador");

insert into tipoMateria values(1, "Formación Institucional");
insert into tipoMateria values(2, "Formación Científica - Básica");
insert into tipoMateria values(3, "Formación Profesional");
insert into tipoMateria values(4, "Formación Terminal e Integración");

insert into estado values(1, "Aceptado");
insert into estado values(2, "Revisión");

insert into tipo_experiencia values(1, "Cafetería");
insert into tipo_experiencia values(2, "Clubes");
insert into tipo_experiencia values(3, "Cafetería");
insert into tipo_experiencia values(4, "Escolar");
insert into tipo_experiencia values(5, "Trámites");

insert into materia (titulo,descripcion,idTipoMateria)values('Ing. Sociedad y Etica','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',1);
insert into materia (titulo,descripcion,idTipoMateria)values('Fisica','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum2',1);
insert into materia (titulo,descripcion,idTipoMateria)values('Circuitos y redes Neuronales','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum3',2);
insert into materia (titulo,descripcion,idTipoMateria)values('Robotica automatizada','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum4',2);
insert into materia (titulo,descripcion,idTipoMateria)values('Algebra','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum5',1);
insert into materia (titulo,descripcion,idTipoMateria)values('Redes de Computacion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum6',3);
insert into materia (titulo,descripcion,idTipoMateria)values('Trabajo Terminal','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum7',4);

insert into experiencia(contenido,nombreAlumno,fechaEnvio,tipoExperiencia,estado) 
values('En la cafeteria, no me gusta que la gente se forme de manera fila india ya que cuando esta lloviendo todo se jode',
'PacoVilla','2008-05-31 20:00:00', 1,2) ; 
insert into experiencia(contenido,nombreAlumno,fechaEnvio,tipoExperiencia,estado) 
values('En el club de Ajderez, no me gusta que la gente se forme de manera fila india ya que cuando esta lloviendo todo se jode',
'MariaPineda','2009-05-31 20:00:00', 2,2) ; 

insert into reporte(submodulo,explicacion,metodo,fechaEnvio) values('Materias','Intento entrar a la parte de visualizar materias pero no me abre, me dice status error 404','Pues en el inicio, le di clic en Materias y me aparecio el error','2009-05-31 20:00:00');
insert into reporte(submodulo,explicacion,metodo,fechaEnvio) values('Perfil','En el perfil no me carga mi informacion no entiendo porque','En la navbar, le de click en Perfil y ahi no puedo ver mi informacion','2009-05-31 20:00:00');

insert into estadistica(pregunta1,pregunta2,pregunta3,pregunta4,pregunta5)values('yes','yes','no','yes','yes');
select * from estadistica;
select COUNT(idEstadistica) from estadistica;
select COUNT(pregunta1),COUNT(pregunta2) from estadistica where pregunta1='no';

insert into usuario values(1, "MedinaVilla", "MedinaVilla", 1);
insert into usuario values(2, "HernadezR", "HernadezR", 1);
insert into usuario values(3, "Sergio", "Sergio", 1);
insert into usuario values(4, "Yosafat", "Yosafat", 1);