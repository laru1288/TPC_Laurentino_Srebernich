create database Laurentino_Srebernich_DB
GO
use Laurentino_Srebernich_DB
go

CREATE TABLE Talle(
	 ID smallint PRIMARY KEY not null identity (1,1),
	 Nombre varchar(20) not null
)
go

create table Marca (
	ID int primary key not null identity (1,1),
	Nombre varchar(20) not null
)
go

create table Color(
	ID int primary key not null identity (1,1),
	Nombre varchar(20) not null
)
go


create table SubCategoria(
	ID int primary key not null identity (1,1),
	Nombre varchar(20) not null
)
go

create table Categoria(
	ID int primary key not null identity (1,1),
	Nombre varchar(20) not null
	IDSub int FOREIGN KEY REFERENCES SubCategoria(ID)
)
go


create table Sexo (
	ID int primary key not null identity (1,1),
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
insert into Producto values ('lalalalalala', 'lalalalala',1,2,3,4,4,4,2,'\Imagenes\Calza_termica.jpeg','','', 10000,'',100,'','',0,1,0 )





insert into Sexo values ( 'Mujer'), ( 'Hombre')
insert into Categoria values ('Remeras',1), ('Buzos',1), ('Pantalones',2), ('Remeras termicas',1), ('Ropa interior',2), ('Camperas',1),
('Tops deportivos',1), ('Shorts de banio',2), ('Boxer',3), ('Conjuntos',3)
insert into Talle values ( 's'), ( 'm'), ( 'l'), ( 'xl')
insert into Marca values ('Adidas'), ( 'Gap'), ( 'Nike'), ( 'Levis'), ( 'Calvin Klein'), ( 'Tomy Highfier')
insert into Color values ( 'Negro'), ( 'rosa'), ( 'gris claro'), ( 'gris melagne'), ( 'gris topo'), ( 'fucsia')
insert into Subcategoria VALUES ( 'PARTE DE ARRIBA'), ( 'PARTE DE ABAJO'), ( 'ROPA INTERIOR')

Select p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, p.Stock,
p.Precio, p.Precio_promo, p.Ancho,  p.Largo, p.Estrella, p.New, p.Garage,
p.IdMarca, p.IdTalle, p.IdColor1, p.IdColor2,p.IdColor3, p.IdSexo, p.IdCategoria, cat.IDSub
from Producto p left join Marca m  on p.IdMarca=m.ID
left join Talle t on t.ID=p.IdTalle
left join Color c on c.ID= p.ID
left join Sexo s on s.ID= p.IdSexo
left join Categoria  cat on cat.ID=p.IdCategoria
left join SubCategoria sub on cat.IDSub=sub.ID

Select p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, 
p.Stock, p.Precio, p.Precio_promo, p.Ancho, p.Largo, p.Estrella, p.New, p.Garage, p.IdMarca,
p.IdTalle, p.IdColor1, p.IdColor2, p.IdColor3, p.IdSexo, p.IdCategoria, p.ID, cat.IDSub from Producto as p
left join Marca as m  on p.IdMarca = m.ID left join Talle as t on t.ID = p.IdTalle left join
Color as c on c.ID = p.IdColor1 or c.ID=p.IdColor2 or c.ID=p.IdColor3
left join Sexo as s on s.ID = p.IdSexo left join Categoria as cat on cat.ID = p.IdCategoria

delete from Producto
drop TABLE Producto
--arreglar ID unico
select * from Producto

insert into Producto (Nombre, Descripcion, IdMarca, IdCategoria, IdTalle, IdColor1, IdColor2, IdColor3, IdSexo, Imagen_principal,
Imagen_2, Imagen_3, Precio, Precio_promo, Stock, Ancho, Largo , Estrella, New, Garage)
values ()

select Id,Nombre from Color

delete from Producto where ID = 2

select * from Categoria
select * from Talle
select * from Color
select * from Sexo
select * from Producto
select * from Marca
select * from SubCategoria

update Categoria set Nombre ='Buzos', IDSub= 2 where ID =1 
--marca =1 /adidas . categoria=2/uzo, talle=3/L, colo1=4/gris melagne, color2=4, sexo=2/homre
--
insert into Categoria (Nombre, IDSub) values ()
update  Categoria  set IDSub= 3
 where ID in (5,9,10)

 alter table Categoria modify ID = identity (1,1)

 select cat.Id, cat.Nombre, IDSub,sub.Nombre  from Categoria cat left join SubCategoria sub on sub.ID=cat.IDSub



 drop database Laurentino_Srebernich_DB