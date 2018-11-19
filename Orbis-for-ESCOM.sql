drop database if exists OrbisESCOM;
create database OrbisESCOM;
use OrbisESCOM;

/*Experiencias*/
create table experiencia_aceptada(
	idExperienciaAceptada int(2) primary key,
    contenido varchar(30),
    nombreAlumno varchar(50),
    fechaEnvio date
);

create table experiencia_revision(
	idExperienciaRevision int(2) primary key,
    contenido varchar(30),
    nombreAlumno varchar(50),
    fechaEnvio date
);

create table moderador(
	idModerador int (2) primary key,
    usuario varchar(30),
    clave varchar(20)
);