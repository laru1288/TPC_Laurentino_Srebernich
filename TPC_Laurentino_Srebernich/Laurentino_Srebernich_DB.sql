create database Laurentino_Srebernich_DB
GO
use Laurentino_Srebernich_DB
go

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
	ID int   IDENTITY(1,1) NOT NULL primary key,
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

insert into Producto values ('Remera termica', '',1,5,6,4,6,4,1,'\Imagenes\Remera_termica_adidas_1.jpeg','\Imagenes\Remera_termica_adidas_2.jpeg','\Imagenes\Remera_termica_adidas_3.jpeg', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Pantalon', '',2,3,3,4,6,4,1,'\Imagenes\pantalon_deportiva_nike2.jpeg','','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Conjunto bando', '',6,3,3,4,6,4,1,'\Imagenes\Conjunto_bando_ck_less.jpeg','','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Campera', '',8,3,3,4,6,4,1,'\Imagenes\Campera_deportiva_adidas.jpeg','','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Campera pink love', '',3,3,3,4,6,4,1,'\Imagenes\Campera_algodon_pink_love.jpeg','','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Campera', '',5,3,3,4,6,4,1,'\Imagenes\Campera_algodon_gap.jpeg','','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Buzo', '',5,3,3,4,6,4,1,'\Imagenes\Buzo_algodon_adidas.jpeg','','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Boxer', '',5,3,3,4,6,4,1,'\Imagenes\Boxer_algodon_tommy_hilfiger.jpeg','','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Pantalon deportivo', 'microfriba, elastizado, chupin',3,3,3,4,6,4,1,'\Imagenes\pantalon_deportiva_nike2.jpeg','\Imagenes\Pantalon_deportivo_nike.jpeg','', 1700,'',10,'','',0,1,0 )
insert into Producto values ('Calza termica', '',3,9,3,1,4,4,2,'\Imagenes\Calza_termica.jpeg','','', 2000,'',10,'','',0,1,0 )



select * from Categoria
select * from Talle
select * from Color
select * from Sexo
select * from Producto
select * from Marca

insert into Sexo values (1, 'Mujer'), (2, 'Hombre')
insert into Categoria values (1,'Remeras'), (2,'Buzos'), (3,'Pantalones'), (4,'Remeras termicas'), (5,'Ropa interior'), (6,'Camperas'),
(7,'Tops deportivos'), (8,'Shorts de banio'), (9,'Boxer'), (10,'Conjuntos')
insert into Talle values (1, 's'), (2, 'm'), (3, 'l'), (4, 'xl')
insert into Marca values (1, 'Adidas'), (2, 'Gap'), (3, 'Nike'), (4, 'Levis'), (5, 'Calvin Klein'), (6, 'Tomy Highfier')
insert into Color values (1, 'Negro'), (2, 'rosa'), (3, 'gris claro'), (4, 'gris melagne'), (5, 'gris topo'), (6, 'fucsia')

Select distinct p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, p.Stock,
p.Precio, p.Precio_promo, p.Ancho,  p.Largo, p.Estrella, p.New, p.Garage,
p.IdMarca, p.IdTalle, p.IdColor1, p.IdColor2,p.IdColor3, p.IdSexo, p.IdCategoria
from Producto p left join Marca m  on p.IdMarca=m.ID
left join Talle t on t.ID=p.IdTalle
left join Color c on c.ID= p.ID
left join Sexo s on s.ID= p.IdSexo
left join Categoria  cat on cat.ID=p.IdCategoria

Select p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, 
p.Stock, p.Precio, p.Precio_promo, p.Ancho, p.Largo, p.Estrella, p.New, p.Garage, p.IdMarca,
p.IdTalle, p.IdColor1, p.IdColor2, p.IdColor3, p.IdSexo, p.IdCategoria, p.ID from Producto as p
left join Marca as m  on p.IdMarca = m.ID left join Talle as t on t.ID = p.IdTalle left join
Color as c on c.ID = p.IdColor1 or c.ID=p.IdColor2 or c.ID=p.IdColor3
left join Sexo as s on s.ID = p.IdSexo left join Categoria as cat on cat.ID = p.IdCategoria

delete from Producto
drop TABLE Producto
--arreglar ID unico 
alter table Producto modify ID int  NOT NULL IDENTITY(1,1) primary key
