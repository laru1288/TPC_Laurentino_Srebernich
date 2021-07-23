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
insert into Producto values ('laura', 'lalalalala',1,1,3,4,4,4,2,'\Imagenes\Calza_termica.jpeg','','', 10000,'',100,'','',1,0,0 )





insert into Sexo values ( 'Mujer'), ( 'Hombre')
insert into Categoria values ('Calzas',1), ('Buzos',1), ('Pantalones',2), ('Remeras termicas',1), ('Ropa interior',2), ('Camperas',1),
('Tops deportivos',1), ('Shorts de banio',2), ('Boxer',3), ('Conjuntos',3)
insert into Talle values ( 's'), ( 'm'), ( 'l'), ( 'xl')
insert into Marca values ('Adidas'), ( 'Gap'), ( 'Nike'), ( 'Levis'), ( 'Calvin Klein'), ( 'Tomy Highfier')
insert into Color values ( 'Negro'), ( 'rosa'), ( 'gris claro'), ( 'gris melagne'), ( 'gris topo'), ( 'fucsia')
insert into Subcategoria VALUES ( 'PARTE DE ARRIBA'), ( 'PARTE DE ABAJO'), ( 'ROPA INTERIOR')

select * from Producto where Estrella=1
update  Producto set Imagen_principal ='\Imagenes\Calza_termica.jpeg' where Estrella=1

Select p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, p.Stock,
p.Precio, p.Precio_promo, p.Ancho,  p.Largo, p.Estrella, p.New, p.Garage,
p.IdMarca, p.IdTalle, p.IdColor1, p.IdColor2,p.IdColor3, p.IdSexo, p.IdCategoria, cat.IDSub
from Producto p left join Marca m  on p.IdMarca=m.ID
left join Talle t on t.ID=p.IdTalle
left join Color c on c.ID= p.ID
left join Sexo s on s.ID= p.IdSexo
left join Categoria  cat on cat.ID=p.IdCategoria
left join SubCategoria sub on cat.IDSub=sub.ID

Select distinct p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, 
p.Stock, p.Precio, p.Precio_promo, p.Ancho, p.Largo, p.Estrella, p.New, p.Garage, p.IdMarca,
p.IdTalle, p.IdColor1, p.IdColor2, p.IdColor3, p.IdSexo, p.IdCategoria, p.ID, cat.IDSub from Producto as p
left join Marca as m  on p.IdMarca = m.ID left join Talle as t on t.ID = p.IdTalle left join
Color as c on c.ID = p.IdColor1 or c.ID=p.IdColor2 or c.ID=p.IdColor3
left join Sexo as s on s.ID = p.IdSexo left join Categoria as cat on cat.ID = p.IdCategoria 
where cat.Nombre = 'ROPA INTERIOR'

delete from Producto
drop TABLE Producto
--arreglar ID unico
select * from SubCategoria
select * from Producto
select * from Categoria

select * from Producto p left join Categoria cat on p.IdCategoria= cat.ID
left join SubCategoria sub on sub.ID=cat.IDSub
where sub.ID=1

insert into Producto (Nombre, Descripcion, IdMarca, IdCategoria, IdTalle, IdColor1, IdColor2, IdColor3, IdSexo, Imagen_principal,
Imagen_2, Imagen_3, Precio, Precio_promo, Stock, Ancho, Largo , Estrella, New, Garage)
values ()

select Id,Nombre from Color

delete from Talle where ID = 5

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

 select cat.ID, cat.Nombre  from Categoria cat left join SubCategoria sub on sub.ID=cat.IDSub where sub.ID=2


 drop database Laurentino_Srebernich_DB

 update  Producto  set Nombre = 'Campera' , Descripcion = '', IdMarca = '5', IdCategoria= '3', IdTalle= '3', IdColor1= '4', IdColor2= '6', IdSexo= '1', Imagen_principal= '\Imagenes\Campera_algodon_gap.jpeg',Imagen_2= '', Imagen_3= '', Precio= 1700,00, Precio_promo= 0,00, Stock= '50', Ancho= '0', Largo= '0', Estrella= 'False', New= 'True', Garage= 'False' where ID = '16' 


 use Laurentino_Srebernich_DB

create table Usuarios(
	ID int primary key not null identity (1,1),
	Usuario varchar(50) not null,
	Pass varchar(50),
	TipoUser int not null
)
go

INSERT INTO Usuarios values ('Test','Test',1)
INSERT INTO Usuarios values ('TestAdmin','Test2',2)

create table Clientes(
	ID int primary key not null identity (1,1),
	Mail varchar(50) not null,
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	DNI int not null,
	Telefono int not null,
	Calle varchar(50) not null,
	Numero int not null,
	CP int not null,
	Piso int not null,
	EntreCalle varchar(70) not null,
	Provincia varchar(50) not null,
	Localidad varchar(50) not null,
	Observaciones varchar(150) not null
)
go

insert into Clientes values ('pepe@pompin.com','Pepe','Pompin',123456,1564351278,'Calle conejin',12,1234,4,'La Madriguera y El Huerto','Conejo','Villa conejera','nada')

Create table Metodo_Pago(
	ID int primary key not null identity (1,1),
	Metodo varchar(50) not null
)
go
insert into Metodo_Pago values ('Transferencia')
insert into Metodo_Pago values ('Mercadopago')
insert into Metodo_Pago values ('Acuerdo con el vendedor')

create table Tipo_Envio(
	ID int primary key not null identity (1,1),
	Envio varchar(50) not null
)
go
insert into Tipo_Envio values ('Mercagoenvios')
insert into Tipo_Envio values ('Retiro en el local')
insert into Tipo_Envio values ('Acuerdo con el vendedor')

create table Estado(
	ID int primary key not null identity (1,1),
	Estado varchar(50) not null
)
go
insert into Estado values ('Pendiente de pago')
insert into Estado values ('Pagado')
insert into Estado values ('Empaquetado')
insert into Estado values ('Enviado')
insert into Estado values ('Recibido')
insert into Estado values ('Rechazado')
insert into Estado values ('finalizado')

create table Venta(
	ID int primary key not null identity (1,1),
	Fecha date not null,
	Id_Cli int not null FOREIGN KEY REFERENCES Clientes(ID),
	Id_Estado int not null FOREIGN KEY REFERENCES Estado(ID),
	Id_Metodo_Pago int not null FOREIGN KEY REFERENCES Metodo_Pago(ID),
	Id_Tipo_Envio int not null FOREIGN KEY REFERENCES Tipo_Envio(ID),
)
go
create table Prod_Venta (
	ID int primary key not null identity (1,1),
	Id_Venta int not null FOREIGN KEY REFERENCES Venta(ID),
	Id_Prod int not null FOREIGN KEY REFERENCES Producto(ID),
	Color varchar not null,
	Cant int not null,
	Talle varchar not null,
	Precio money not null
)
go
SELECT * FROM Venta
select GETDATE()
select MAX(V.ID) from Venta V where V.Id_Cli=1 and V.Id_Estado=1