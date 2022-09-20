create database Hospitalizacion
use Hospitalizacion

create table Medicos(
IdMedico int primary key identity(1,1) not null,
Nombre varchar (40) not null,
Apellido varchar (40) not null,
NumeroTelefonico varchar (40) not null,
Genero varchar(40) not null,
Especialidad varchar (40),
Codigo int,
Registro_Rethus int,
)

create table Pacient(
IdPaciente int primary key identity(1,1) not null,
IdMedico int,
Nombre varchar (40) not null,
Apellido varchar (40) not null,
NumeroTelefonico varchar (40) not null,
Genero varchar(40) not null,
Direccion int,
Ciudad int,
FechaIngreso date,
Habitacion int,

CONSTRAINT fk_Medicos FOREIGN KEY (IdMedico) REFERENCES Medicos(IdMedico)
select *from Pacient;
);