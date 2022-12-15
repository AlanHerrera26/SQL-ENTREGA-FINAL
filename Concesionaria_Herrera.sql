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

insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (1, '0aac83a1-f395-4058-8907-63d21dd1705b', 'Carlina', 'De Carteret', 'Female', '2022-10-13 18:10:55', '53473 Derek Circle', '(284) 5524306');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (2, '1f66bd76-bd52-4af3-ae1e-94c361a39069', 'Marget', 'Trask', 'Female', '2022-10-15 12:37:51', '150 Fuller Trail', '(906) 8500637');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (3, 'f29d3e63-ae50-454a-a027-c24819bed5f7', 'Worthington', 'Hembry', 'Male', '2022-01-17 08:15:40', '5 Old Gate Drive', '(894) 2453819');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (4, 'e71ad612-a19c-483f-85b3-2805c58d14d7', 'Burnaby', 'Fardy', 'Male', '2022-09-22 22:20:52', '81 Redwing Alley', '(916) 6202518');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (5, 'b3360c4e-8eae-4f9e-8d24-41bad9c562d7', 'Ivan', 'Westnage', 'Male', '2021-12-19 00:12:46', '47 Harper Circle', '(496) 1073665');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (6, '3eceb575-a1c0-4fb3-9c80-37fd8fa9f27c', 'Felic', 'Canwell', 'Male', '2021-11-29 21:16:01', '68 Talisman Place', '(267) 8200822');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (7, '969cfe66-70f2-4072-b3fd-2bed7c76e6f4', 'Quentin', 'Garnsey', 'Male', '2021-11-07 13:22:03', '40605 Northridge Hill', '(769) 1196363');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (8, '7ff2f46d-1c16-4213-b496-057526bee9f6', 'Nikkie', 'Drennan', 'Female', '2022-05-09 11:26:38', '0475 Riverside Parkway', '(794) 2087970');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (9, '98f814d2-d2a1-4864-bec4-81cc6825d30b', 'Baily', 'Dello', 'Male', '2022-02-18 14:08:44', '2 Cottonwood Way', '(778) 7887536');
insert into cliente (Id_cliente, dni, Nombres, Apellidos , genero, fecha_nacimiento, direccion, telefono) values (10, '2640810a-f391-425a-9bc8-513959ac0205', 'Flore', 'Knewstubb', 'Female', '2022-03-08 02:12:05', '262 Algoma Hill', '(225) 7580665');


create table empleados (
	id_empleados INT primary key,
	dni VARCHAR(40) not null unique,
	Nombres VARCHAR(50)not null,
	Apellidos  VARCHAR(50)not null,
	telefono VARCHAR(50)null unique
);

insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (1, '7d1c18d6-bd09-4b89-a8a1-4c78c8e16c94', 'Ronny', 'Barter', '577-390-8263');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (2, '3cb31f41-57f8-4b08-bff4-d5d6da9090c4', 'Shoshanna', 'Mougin', '359-162-2308');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (3, 'a3a1fba2-3894-4f96-9391-16cdb6514fbb', 'Gilberta', 'Glassard', '984-972-8778');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (4, '5e823018-197b-41ff-8f86-25966c3db737', 'Fanny', 'Elford', '548-955-6973');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (5, '9bf950ef-ddaf-4a52-a810-5d6685e6602d', 'Gun', 'Immings', '758-453-8318');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (6, '46fb9340-ade1-471e-a310-e36608bcbbda', 'Diahann', 'Lumley', '215-947-6086');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (7, '098cb31a-2fec-4471-8194-8e6c3d6a53ea', 'Raimondo', 'Ashleigh', '164-881-4159');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (8, 'ae372e02-8924-40fa-9fb0-b5151e2e7fd1', 'Jilli', 'Cicullo', '827-167-5093');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (9, '8f7a48f7-0bfb-4a11-b74c-65ba49246200', 'Mason', 'Abramin', '738-280-8223');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (10, 'cc829423-e393-4797-8382-00c7f6d1e53f', 'Charlene', 'Coxwell', '895-416-8103');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (11, '47f60cae-a739-418a-ac8e-2645642ac980', 'Bernice', 'Stanaway', '574-503-9036');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (12, '03124194-ec28-42ae-8f22-3d5bc31df45b', 'Leeann', 'Bulbrook', '661-576-9054');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (13, '860e1be4-659b-4bc6-8c45-ba5332f0fd81', 'Sosanna', 'Steinham', '849-111-2331');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (14, '0e2fb8cc-8875-4d86-b138-4d8d1192fc5c', 'Carlie', 'Wadman', '830-589-6852');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (15, 'e2389078-b962-4316-a478-4fb2d1f3d2e6', 'Cami', 'Longmuir', '154-412-4355');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (16, 'd96888e8-8118-42cc-8268-afbbb6b8161a', 'Mervin', 'Fittis', '196-833-1917');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (17, 'b6e34c86-1eee-4746-b22b-ba302a513702', 'Johna', 'Janu', '193-109-9359');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (18, 'b5b5a881-4e94-4778-9c51-fa0afeadbf9a', 'Virgil', 'Ruberti', '572-296-5783');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (19, 'cb72bf73-bd19-4223-b88e-923641fb60cc', 'Sella', 'Looney', '131-418-0681');
insert into empleados (id_empleados, dni, Nombres, Apellidos , telefono) values (20, '801831a7-e53d-4d0e-8800-112558070ec9', 'Maureene', 'McCorkell', '628-831-2643');


create table marcas (
	id_marcas INT primary key,
	nombre VARCHAR(50) not null
);

insert into marcas (id_marcas, nombre) values (1, 'Kia');
insert into marcas (id_marcas, nombre) values (2, 'Chevrolet');
insert into marcas (id_marcas, nombre) values (3, 'Lexus');
insert into marcas (id_marcas, nombre) values (4, 'Lexus');
insert into marcas (id_marcas, nombre) values (5, 'Buick');
insert into marcas (id_marcas, nombre) values (6, 'GMC');
insert into marcas (id_marcas, nombre) values (7, 'Subaru');
insert into marcas (id_marcas, nombre) values (8, 'Oldsmobile');
insert into marcas (id_marcas, nombre) values (9, 'GMC');
insert into marcas (id_marcas, nombre) values (10, 'Mazda');
insert into marcas (id_marcas, nombre) values (11, 'Pontiac');
insert into marcas (id_marcas, nombre) values (12, 'Ford');
insert into marcas (id_marcas, nombre) values (13, 'Chrysler');
insert into marcas (id_marcas, nombre) values (14, 'Saturn');
insert into marcas (id_marcas, nombre) values (15, 'Honda');



create table modelos (
	id_modelos INT primary key,
	id_marcas INT,foreign key(id_marcas) references marcas(id_marcas),
	nombre VARCHAR(50)not null,
	color VARCHAR(50)null
);

insert into modelos (id_modelos, id_marcas, nombre, color) values (1, 1, 'GTO', 'Pontiac');
insert into modelos (id_modelos, id_marcas, nombre, color) values (2, 2, 'A7', 'Audi');
insert into modelos (id_modelos, id_marcas, nombre, color) values (3, 3, 'Sable', 'Mercury');
insert into modelos (id_modelos, id_marcas, nombre, color) values (4, 4, 'Sable', 'Mercury');
insert into modelos (id_modelos, id_marcas, nombre, color) values (5, 5, 'Azure', 'Bentley');
insert into modelos (id_modelos, id_marcas, nombre, color) values (6, 6, 'Fit', 'Honda');
insert into modelos (id_modelos, id_marcas, nombre, color) values (7, 7, 'Thunderbird', 'Ford');
insert into modelos (id_modelos, id_marcas, nombre, color) values (8, 8, 'Cavalier', 'Chevrolet');
insert into modelos (id_modelos, id_marcas, nombre, color) values (9, 9, 'Discovery', 'Land Rover');
insert into modelos (id_modelos, id_marcas, nombre, color) values (10, 10, 'Accord', 'Honda');
insert into modelos (id_modelos, id_marcas, nombre, color) values (11, 11, 'Legacy', 'Subaru');
insert into modelos (id_modelos, id_marcas, nombre, color) values (12, 12, 'Montego', 'Mercury');
insert into modelos (id_modelos, id_marcas, nombre, color) values (13, 13, 'Econoline E350', 'Ford');
insert into modelos (id_modelos, id_marcas, nombre, color) values (14, 14, 'Grand Prix', 'Pontiac');
insert into modelos (id_modelos, id_marcas, nombre, color) values (15, 15, 'Falcon', 'Ford');



create table autos (
	id_autos INT primary key,
	id_modelos INT,foreign key (id_modelos) references modelos(id_modelos),
	matricula VARCHAR(50)not null unique,
	precio VARCHAR(50)not null
);

insert into autos (id_autos, id_modelos, matricula, precio) values (1, 1, 'WAUJT54B64N426852', '$1484125.96');
insert into autos (id_autos, id_modelos, matricula, precio) values (2, 2, '1N6AD0CU0BC972204', '$312599.55');
insert into autos (id_autos, id_modelos, matricula, precio) values (3, 3, '1G6DG5EG8A0146389', '$521215.62');
insert into autos (id_autos, id_modelos, matricula, precio) values (4, 4, 'WBA3C1G52EN921302', '$568375.66');
insert into autos (id_autos, id_modelos, matricula, precio) values (5, 5, 'WBAVA33518F677866', '$205190.67');
insert into autos (id_autos, id_modelos, matricula, precio) values (6, 6, 'WDDEJ7EB9CA944129', '$626371.12');
insert into autos (id_autos, id_modelos, matricula, precio) values (7, 7, 'WBS3U9C53FJ274513', '$1387451.48');
insert into autos (id_autos, id_modelos, matricula, precio) values (8, 8, '3GYEK62897G633733', '$94072.24');
insert into autos (id_autos, id_modelos, matricula, precio) values (9, 9, 'WAUCF78K09N712595', '$78989.24');
insert into autos (id_autos, id_modelos, matricula, precio) values (10, 10, '2HNYD28528H387025', '$1355671.19');
insert into autos (id_autos, id_modelos, matricula, precio) values (11, 11, '3VWKZ7AJ1BM606399', '$176874.77');
insert into autos (id_autos, id_modelos, matricula, precio) values (12, 12, '5TDBW5G1XFS223056', '$860005.57');
insert into autos (id_autos, id_modelos, matricula, precio) values (13, 13, '1GT022CG0EF106452', '$1229528.72');
insert into autos (id_autos, id_modelos, matricula, precio) values (14, 14, '1N6AA0CA6BN124010', '$193762.44');
insert into autos (id_autos, id_modelos, matricula, precio) values (15, 15, '3D7JB1EK7AG555996', '$1354684.97');



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




USE consecionaria;


CREATE OR REPLACE VIEW `precio_de_venta` AS
SELECT
	id_autos as coches,
    id_autos AS item,
    concat('$', TRUNCATE((precio * (( 200 + 100) + 1)), 2)) AS precio
    FROM autos;
    
    CREATE OR REPLACE VIEW `lista_de_precios_view` AS
	SELECT * FROM empleados ORDER BY apellidos DESC;

CREATE VIEW `lista_clientes_view` AS
SELECT nombres,apellidos FROM cliente WHERE telefono is not null;

CREATE VIEW `modelos_autos` AS

SELECT id_marcas FROM marcas WHERE nombre;

CREATE VIEW `PRECIO B` AS 
SELECT precio FROM AUTOS WHERE precio like '4500%';

FUNCIONES

DELIMITER $$

USE `Consecionaria_Herrera`$$

CREATE FUNCTION `nombre_completo`(nombres VARCHAR(50), apellidos VARCHAR(50)) RETURNS VARCHAR(100)

READS SQL DATA

BEGIN

DECLARE nombres VARCHAR(50);

DECLARE apellidos VARCHAR (50);

DECLARE identidad VARCHAR(50);

SET nombres = (SELECT nombres FROM cliente);

SET apellidos = (SELECT apellidos FROM cliente);

SET resultado = (CONCAT(nombres,' ',apellidos));

RETURN identidad;

END$$

DELIMITER ;

DELIMITER $$

USE `Consecionaria_Herrera`$$

CREATE FUNCTION `calcular_iva` (total DECIMAL(6,3)) RETURNS DECIMAL (6,3)
NO SQL
BEGIN
DECLARE resultado DECIMAL(6,3);
DECLARE iva INT;
SET iva = 21;
SET resultado = total * ((iva/100) + 1);
RETURN resultado;
END$$

DELIMITER ;

select calcular_iva();


USE `Consecionaria_Herrera`;
DROP function IF EXISTS `hay_stock_de_autos?`;

DELIMITER $$
USE `Consecionaria_Herrera`$$
CREATE FUNCTION `haystockdeautos?` (id INT)
RETURNS VARCHAR(255) 
READS SQL DATA
BEGIN
DECLARE idstock INT;
DECLARE resultado VARCHAR (255);
	SET idstock = (SELECT id_autos FROM stock WHERE id = ID_STOCK);
IF idstock > 0 THEN 
	SET resultado = "Hay stock de autos";
ELSE 
	SET resultado = "NO hay stock de autos";
	END IF;

RETURN resultado;
END$$

DELIMITER ;

USE `Consecionaria_Herrera`;

DROP function IF EXISTS `hay_stock?`;

DELIMITER $$
USE `Consecionaria_Herrera`$$
CREATE FUNCTION `haystock?` (Idstock INT)
	RETURNS VARCHAR (255)
READS SQL DATA

BEGIN
	DECLARE Idstockid_autos INT;
    DECLARE Idstockid_modelos INT;
    DECLARE resultado VARCHAR (255);
		SET Idstockid_autos = (SELECT id_autos FROM stock WHERE Idstock = ID_STOCK);
		SET Idstockid_modelos = (SELECT id_modelos FROM stock WHERE Idstock = ID_STOCK);
    IF (Idstockid_autos > 0 AND  Idstockid_modelos > 0) THEN 
		SET resultado = "Hay stock de autos y modelos";
	ELSEIF (Idstockid_autos > 0 AND Idstockid_modelos = 0) THEN
		SET resultado = "Hay stock de autos pero no de modelos";
	ELSEIF (Idstockid_modelos = 0 AND Idstockid_autos > 0) THEN
		SET resultado = "Hay stock de modelos pero no de autos";   
	ELSEIF (Idstockid_autos = 0 AND Idstockid_modelos = 0) THEN
		SET resultado = "No hay stock de nada";
	ELSE 
		SET resultado = "Introdujo un id inexistente";
	END IF;
    
RETURN resultado;
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION `CALCULAR_IMPUESTO` (total DECIMAL(11,2))
	RETURNS DECIMAL (11,2)
	NO SQL
	BEGIN
	DECLARE resultado DECIMAL(11,2);
	DECLARE iva INT;
	SET iva = 21;
	SET resultado = total * ((iva/100)+1);
	RETURN resultado;
END $$

DELIMITER ;

DELIMITER $$

DROP FUNCTION IF EXISTS `calcular_impuesto`;
CREATE FUNCTION `calcular_impuesto` 
	(id_auto INT)
	RETURNS decimal (8,2)
	READS SQL DATA
BEGIN
	DECLARE resultado decimal (8,2);
	DECLARE iva decimal (8,2);
	DECLARE valor_auto decimal (8,2);
	SET valor_auto = (SELECT precio FROM autos WHERE precio = id);
	SET resultado = valor_auto*1.21;
	RETURN RESULTADO;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER `quien_vendio_este_auto`
	AFTER INSERT ON `vendidos`
	FOR EACH ROW
	INSERT INTO `tabla_auxiliar` (autos1,modelos2)
	VALUES (NEW.autos1,NEW.modelos2,NEW.modelos,NEW.matricula,NEW.precio);
-- tabla paralela de control de autos vendidos
DELIMITER ;

CREATE TABLE new_autos (
id_autos INT PRIMARY KEY,
	id_modelos INT,
	matricula VARCHAR(50),
	precio VARCHAR(50)
);


CREATE TRIGGER `tr_add_new_autos`
AFTER INSERT ON `autos`
FOR EACH ROW
INSERT INTO `new_autos`
VALUES (NEW.id_autos,NEW.id_modelos,NEW.matricula,NEW.precio,SESSION_USER(),CURRENTE_TIMESTAMP());

insert into NEW.autos (id_autos, id_modelo, id_matricula, precio) values (2, 'RX Hybrid', '3D73M4HL0BG950127', '$50955,82'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (3, 'Thunderbird', 'WDDEJ7KB7CA678369', '$80832,84'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (4, 'Navajo', 'WAUVT58E84A085340', '$99044,68'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (5, 'Contour', '1N4AB7AP7DN540110', '$59725,17'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (6, 'S6', '2C3CDXHG3DH266713', '$54808,73'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (7, 'Protege', '1N6AF0KY7EN575094', '$92425,73'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (8, 'G-Class', 'WA1CV74L79D361589', '$58652,09'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (9, 'V8 Vantage', 'WBAPM73539E079762', '$75254,47'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (10, 'Corona Victoria', 'WP1AA2A2XBL044520', '$59079,76'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (9, 'V8 Vantage', 'WBAPM73539E079762', '$75254,47'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (10, 'Corona Victoria', 'WP1AA2A2XBL044520', '$59079,76');
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (9, 'V8 Vantage', 'WBAPM73539E079762', '$75254,47'); 
insert NEW.autos (id_autos, id_modelo, id_matricula, precio) values (10, 'Corona Victoria', 'WP1AA2A2XBL044520', '$59079,76');
-- nuevos ingresos de autos

DELIMITER $$
CREATE TRIGGER trigger_producto_historico 
AFTER INSERT ON producto
FOR EACH ROW
BEGIN 
   INSERT INTO producto_historico(id, descripcion, precio)
   VALUES (NEW.id, NEW.descripcion, NEW.precio, CURDATE());
END; $$
-- recordatorio historico de los productos que se han tenido
DELIMITER ;


UPDATE empleados SET antiguedad = antiguedad + 1;
 
CREATE TRIGGER actualizar_sueldo_empleados AFTER UPDATE ON empleados
FOR EACH ROW SET @sueldo = @sueldo + 1.21;
-- actualizar el sueldo a los empleados de acuerdo a la inflacion


DELIMITER $$
CREATE TRIGGER comprobar_edad
AFTER INSERT ON cliente
FOR EACH ROW 
BEGIN
    IF NEW.edad<17
      THEN SET NEW.edad = 17;
    END IF; 
END; $$
-- edad permitidad para los clientes