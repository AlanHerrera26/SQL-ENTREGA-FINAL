drop database Consecionaria_Herrera;

create database Consecionaria_Herrera;

USE Consecionaria_Herrera;


create table cliente (
	Id_cliente INT primary key,
	dni VARCHAR(40)not null unique,
	Nombres VARCHAR(50)not null,
	Apellidos  VARCHAR(50)not null,
	genero VARCHAR(50)not null,
	fecha_nacimiento DATETIME not null,
	direccion VARCHAR(50)null,
	telefono VARCHAR(50)null unique
);

create table empleados (
	id_empleados INT primary key,
	dni VARCHAR(40) not null unique,
	Nombres VARCHAR(50)not null,
	Apellidos  VARCHAR(50)not null,
	telefono VARCHAR(50)null unique
);


create table marcas (
	id_marcas INT primary key,
	nombre VARCHAR(50) not null
);


create table modelos (
	id_modelos INT primary key,
	id_marcas INT,foreign key(id_marcas) references marcas(id_marcas),
	nombre VARCHAR(50)not null,
	color VARCHAR(50)null
);



create table autos (
	id_autos INT primary key,
	id_modelos INT,foreign key (id_modelos) references modelos(id_modelos),
	matricula VARCHAR(50)not null unique,
	precio VARCHAR(50)not null
);



CREATE TABLE forma_pago(
	id_forma_pago INT PRIMARY KEY,
	descripcion VARCHAR(20)
);

CREATE TABLE detalle_venta(
	id_detalle_venta INT PRIMARY KEY,
	id_cliente INT,FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente),
	id_empleados INT,FOREIGN KEY(id_empleados) REFERENCES empleados( id_empleados),
	id_autos INT,FOREIGN KEY (id_autos)REFERENCES autos(id_autos),
	id_forma_pago INT,FOREIGN KEY (id_forma_pago) references forma_pago(id_forma_pago),
	fecha_hora DATETIME NOT NULL,
	precio DECIMAL (6,4)NOT NULL,
	cantidad INT NOT NULL,
	IVA DECIMAL(6,3) NOT NULL,
	Total DECIMAL (6,3) NOT NULL
);

create table reclamos(
	id_reclamo INT PRIMARY KEY,
	id_detalle_venta INT,FOREIGN KEY(id_detalle_venta) REFERENCES detalle_venta(id_detalle_venta),
	fecha_hora DATETIME NOT NULL,
	descripcion VARCHAR(100) NULL
);

create table pedidos(
	id_pedidos int primary key,
	id_detalle_venta int,foreign key(id_detalle_venta) references detalle_venta(id_detalle_venta),
	fecha_hora datetime not null,
	cantidad int null,
	descripcion varchar (100) null
);
