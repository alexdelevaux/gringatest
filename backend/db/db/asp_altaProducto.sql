--  09/09/2018
-- Fernanda Valle
-- Alejandro Cisneros Delevaux
-- La Gringa

-- stored procedure

USE `proyecto` ;


-- =========	ALTA PRODUCTO - SP	========================================================================


DROP PROCEDURE IF EXISTS asp_altaProducto;

DELIMITER //

CREATE PROCEDURE `asp_altaProducto` (pprod varchar(45), pest char(1), 
				pprecio decimal(8,2), pfecha date, pobs varchar(100), 
				OUT resultado varchar(100))


SALIR : BEGIN
DECLARE pid INT;
SET resultado = 'Producto creado con exito';

SET pid  = (SELECT MAX(idProducto) FROM prodcutos) + 1;
    
    IF((SELECT idProducto FROM productos WHERE producto = pprod) IS NOT NULL) THEN
		SET resultado = 'El nombre del producto debe ser unico. Ya existe un producto con ese nombre';
        SELECT resultado;
        LEAVE SALIR;
	END IF;
    
	IF(pprod IS NULL OR NOT pprod REGEXP '^[a-zA-Z0-9]+$') THEN 
		SET resultado = 'El nombre del producto no puede ser vacio';
		SELECT resultado;
		LEAVE SALIR;
    END IF;
    
	IF(pest IS NULL) THEN 
		SET pest = 'a';
 	END IF;
    
-- Controla que el estado enviado sea valido
    IF(NOT STRCMP(LOWER(pest),'a') = 0 OR STRCMP(LOWER(pest),'i') = 0 ) THEN 
        SET resultado = 'Estado ingresado invalido';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
    
    -- ver bien lo de menor que cero
    -- ver bien lo de las ezpresiones regulares para que pueda tener punto
    IF(pprecio IS NULL OR NOT pprecio REGEXP '^[0-9]+$' OR pprecio < 0) THEN 
		SET resultado = 'Precio no valido';
		SELECT resultado;
        LEAVE SALIR;
    END IF;

    
 	IF(pobs IS NULL) THEN 
 		SET pobs = '-';
     END IF;

    
    
    
INSERT INTO `proyecto`.`productos` (`idProducto`, `producto`, `estado`, `precioVenta`,
									`fechaActualizacion`, `observaciones`)
	VALUES (pid, pprod, pest, pprecio, pfecha, pobs);


SELECT resultado;

END //

DELIMITER ;

set @resultado = '';

--  `asp_altaEmpleado` (pus varchar(45), pcontra varchar(45), pnomb varchar(45),
-- 			pap varchar(45), pest char(1), pobs varchar(100), 
--          prol char(1), OUT resultado varchar(100))

call asp_altaProducto('dulce de leche stevia', null, , 'cruz', null, null, null, @resultado);

-- #####################################################################################




