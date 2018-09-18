--  04/09/2018
-- Fernanda Valle
-- Alejandro Cisneros Delevaux
-- La Gringa

-- stored procedure


-- =========	MODIFICAR EMPLEADO - SP	========================================================================


USE `proyecto` ;


DROP PROCEDURE IF EXISTS asp_modificarEmpleado;

DELIMITER //

CREATE PROCEDURE `asp_modificarEmpleado` (pid int, pus varchar(45), ppsw varchar(45), pnomb varchar(45),
			pap varchar(45), pest char(1), pobs varchar(100), 
            prol char(1), OUT resultado varchar(100))


SALIR : BEGIN

DECLARE id INTEGER;
DECLARE ap varchar(45);
DECLARE nomb varchar(45);
DECLARE us varchar(45);
DECLARE psw varchar(45);
DECLARE domic varchar(45);
DECLARE tel varchar(10);
DECLARE est char(1);
DECLARE obs varchar(100);
DECLARE rol char(1);

SET resultado = 'Empleado modificado con exito';

  IF( (SELECT idempleado FROM empleados WHERE idempleado = pid ) IS NULL) THEN
        SET resultado = 'No existe el usuario';
        SELECT resultado;	
		LEAVE SALIR;
    
    END IF;
    
    IF((SELECT idempleado FROM empleados WHERE usuario = pus LIMIT 1) IS NOT NULL) THEN
    
		IF( (SELECT idempleado FROM empleados WHERE usuario = pus) <> pid) THEN
	        
			SET resultado = 'Ya existe ese usuario';
			SELECT resultado;	
			LEAVE SALIR;
		END IF;
    END IF;
   
    IF(pnomb IS NOT NULL) THEN
		
        IF(NOT pnomb REGEXP '^[a-z]+$') THEN 
		
			SET resultado = 'El nombre solo debe contener caracteres alfabeticos';
			SELECT resultado;
			LEAVE SALIR;
		ELSE
			SET nomb = pnomb;
    	END IF;
    ELSE
		SET nomb = (SELECT nombre FROM empleados WHERE idempleado = pid);
    END IF;
    
	
    IF(pap IS NOT NULL) THEN
        
		IF(NOT pap REGEXP '^[a-z]+$') THEN 
			SET resultado = 'El apellido solo debe contener caracteres alfabeticos';
			SELECT resultado;
			LEAVE SALIR;	
			
		ELSE    
			SET ap = pap;
		END IF;
		
    ELSE
		SET ap = (SELECT apellido FROM empleados WHERE idempleado = pid);
    END IF;
    
    
    IF(pus IS NOT NULL) THEN
       
        IF(NOT pus REGEXP '^[a-zA-Z0-9]+$') THEN 
			SET resultado = 'Usuario invalido';
			SELECT resultado;
			LEAVE SALIR;
		
		ELSE   
			SET us = pus;
		END IF;
        
	ELSE
		SET us = (SELECT usuario FROM empleados WHERE idempleado = pid);
    END IF;
    
    
	IF(ppsw IS NOT NULL) THEN
        
		IF(NOT ppsw REGEXP '^[a-zA-Z0-9]+$') THEN 
			SET resultado = 'La contrasena no es valida';
			SELECT resultado;
			LEAVE SALIR;
        
		ELSE
			SET psw = ppsw;
		END IF;
    ELSE
		SET psw = (SELECT contrasena FROM empleados WHERE idempleado = pid);
    END IF;
    
    
    IF(pest IS NOT NULL) THEN

		IF(NOT STRCMP(LOWER(pest),'a') = 0 OR STRCMP(LOWER(pest),'i') = 0 ) THEN 
			SET resultado = 'Estado ingresado invalido';
			SELECT resultado;
			LEAVE SALIR;

		ELSE 
			SET est = pest;
        
	    END IF;
	
    ELSE
		SET est = (SELECT estado FROM empleados WHERE idempleado = pid);
    END IF;
    
    
	IF(pobs IS NOT NULL) THEN
        SET obs = pobs;
	ELSE
		SET obs = (SELECT observaciones FROM empleados WHERE idempleado = pid);
    END IF;
    
	
    IF(prol IS NOT NULL) THEN
    
		IF(NOT STRCMP(LOWER(prol),'v') = 0 OR STRCMP(LOWER(prol),'a') = 0 ) THEN 
			SET resultado = 'Rol ingresado invalido';
			SELECT resultado;
			LEAVE SALIR;
		ELSE
			SET rol = prol;
            
		END IF;
    ELSE
		SET rol = (SELECT rol FROM empleados WHERE idempleado = pid);
    END IF;
		   
    
    UPDATE `proyecto`.`empleados`
    SET usuario = us, nombre = nomb, apellido = ap, estado = est, observaciones = obs, rol = rol
    WHERE idEmpleado = pid;   
   
 
    SELECT resultado;
    
END //

DELIMITER ;


set @resultado = '';

-- `asp_modificarEmpleado` (pid int, pus varchar(45), ppsw varchar(45), pnomb varchar(45),
-- 			pap varchar(45), pest char(1), pobs varchar(100), 
--             prol char(1), OUT resultado varchar(100))


call asp_modificarEmpleado(17, 'juaita', 'contrajuana','mariajuana', 'cruz', null, null, null, @resultado);

call asp_modificarEmpleado(10, 'marianita', 'pswmarianita','mariana', 'lopez', 'a', null, 'v', @resultado);

call asp_modificarEmpleado(10, 'AAAA', 'AAAAA','AAAA', 'AAAAAAAAA', 'a', null, 'v', @resultado);



-- #####################################################################################


