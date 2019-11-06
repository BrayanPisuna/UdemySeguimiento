use master 
go 
create database dbproductos
go

use dbproductos 
go
--CREACION DE LA TABLA CATEGORIA DENTRO DE NUESTRA BASE DE DATOS DBPRODUCTOS
create table categoria(
	idcategoria integer primary key identity,
	nombre varchar(50) not null unique,
	descripcion varchar(255) null,
	estado bit default(1)
);
go

--INSERTAREMOS DATOS A NUESTROS CAMPOS 

INSERT INTO categoria (nombre,descripcion) 
VALUES ('Equipos de Sonido','Todos los equipos de sonido')
go

--Para mostrar los elementos ingresados
select *from categoria

--CREAR TABLA PRODUCTO

create table producto(
	idproducto integer primary key identity,
	idcategoria integer  not null,
	codigo varchar(255) null,
	nombre varchar(255) not null,
	precio_venta decimal(11,2) not null,
	stock integer not null,
	descripcion varchar(255) null,
	estadop bit default(1),
	--Agrego uns llave foranea
	FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria) 
	);
go