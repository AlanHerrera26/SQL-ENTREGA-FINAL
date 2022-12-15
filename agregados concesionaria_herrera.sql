

USE consecionaria;


CREATE OR REPLACE VIEW `precio_de_venta` AS
SELECT
	id_autos as coches,
    id_autos AS item,
    concat('$', TRUNCATE((precio * (( 200 + 100) + 1)), 2)) AS precio
    FROM autos;
    
    CREATE OR REPLACE VIEW `lista_de_precios_view` AS
	SELECT * FROM empleado ORDER BY apellidos DESC;

CREATE VIEW `lista_clientes_view` AS
SELECT nombres,apellidos FROM cliente WHERE telefono is not null;

CREATE VIEW `modelos_autos` AS

SELECT id_marca FROM marcas WHERE nombre;

CREATE VIEW `PRECIO B` AS 
SELECT precio FROM AUTOS WHERE precio like '4500%';

FUNCIONES

DELIMITER $$

USE `consecionaria`$$

CREATE FUNCTION `nombre_completo`(nombre VARCHAR(50), apellido VARCHAR(50)) RETURNS VARCHAR(100)

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

USE `consecionaria`$$

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


USE `consecionaria`;
DROP function IF EXISTS `hay_stock_de_autos?`;

DELIMITER $$
USE `consecionaria`$$
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

USE `consecionaria`;

DROP function IF EXISTS `hay_stock?`;

DELIMITER $$
USE `consecionaria`$$
CREATE FUNCTION `haystock?` (Idstock INT)
	RETURNS VARCHAR (255)
READS SQL DATA

BEGIN
	DECLARE Idstockid_autos INT;
    DECLARE Idstockid_modelos INT;
    DECLARE resultado VARCHAR (255);
		SET Idstockid_autos = (SELECT id_autosFROM stock WHERE Idstock = ID_STOCK);
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
END


DELIMITER $$

DELIMITER ;

DELIMITER $$

DROP FUNCTION IF EXISTS `calcular_impuesto`;
CREATE FUNCTION calcular_impuesto 
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
FOR EACH ROW SET @sueldo = @sueldo + 50.000;
-- actualizar el sueldo a los empleados


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