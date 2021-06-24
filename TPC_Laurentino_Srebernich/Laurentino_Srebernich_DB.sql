create database Laurentino_Srebernich_DB
GO

CREATE TABLE Talle(
	 ID smallint PRIMARY KEY not null,
	 Nombre varchar(20) not null
)
go

create table Marca (
	ID int primary key not null,
	Nombre varchar(20) not null
)
go

create table Color(
	ID int primary key not null,
	Nombre varchar(20) not null
)
go

create table Categoria(
	ID int primary key not null,
	Nombre varchar(20) not null
)
go

create table Sexo (
	ID int primary key not null,
	Nombre varchar(20) not null
)
go


create table Producto (
	ID int primary key not null,
	Nombre varchar(20) null,
	Descripcion varchar(150) NULL,	
	IdMarca int  NULL FOREIGN KEY REFERENCES Marca(ID),
	IdCategoria int  NULL FOREIGN KEY REFERENCES Categoria(ID),
	IdTalle smallint  NULL FOREIGN KEY REFERENCES Talle(ID),
	IdColor1 int  NULL FOREIGN KEY REFERENCES Color(ID),
	IdColor2 int  NULL FOREIGN KEY REFERENCES Color(ID),
	IdColor3 int  NULL FOREIGN KEY REFERENCES Color(ID),
	IdSexo int NULL FOREIGN KEY REFERENCES Sexo(ID),
	Imagen_principal varchar(1000) NULL,
	Imagen_2 varchar(1000) NULL,
	Imagen_3 varchar(1000) NULL,
	Precio money NULL,
	Precio_promo money NULL,
	Stock int not null,
	Ancho int  null,
	Largo int null,
	Estrella bit null,
	New bit null,
	Garage bit null
)
go

insert into Producto values (10,'Conjunto bando', '',5,3,3,4,6,4,1,'\Imagenes\Conjunto_bando_ck_less.jpeg','','', 1700,'',10,'','',0,1,0 )

select * from Categoria
select * from Talle
select * from Color
select * from Sexo
select * from Producto
select * from Marca

insert into Sexo values (1, 'Mujer'), (2, 'Hombre')