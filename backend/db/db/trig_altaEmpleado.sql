--  04/09/2018
-- Fernanda Valle
-- Alejandro Cisneros Delevaux
-- La Gringa

-- trigger alta empleado


-- ###########	TRIGGER ALTA EMPLEADO 	##################

DROP TRIGGER IF EXISTS trig_altaEmpleado;


DELIMITER //

CREATE TRIGGER trig_altaEmpleado AFTER INSERT ON empleados 
FOR EACH ROW 
BEGIN

DECLARE cod INT;

    SET cod = ((SELECT Max(codigo) FROM Log_access) + 1);
	
    IF (cod IS NULL) THEN
    
		SET cod = 1;
        
    END IF;
    
    INSERT INTO `proyecto`.`log_access` (`codigo`,`usuarioOperacion`, `fecha`, `operacion`, 
										`maquina`, `idEmpleado`, `usuario`, `contrasena`, `nombre`, 
										`apellido`, `estado`, 
                                        `observaciones`, `rol`)
	VALUES (
    
		cod, 
        SUBSTRING(USER(),1,(instr(user(),'@')-1)),
		NOW(), 
        'INSERT', 
        SUBSTRING(USER(),(INSTR(USER(),'@')+1)),
        
        
        NEW.idEmpleado, 
        NEW.usuario, 
        NEW.contrasena, 
        NEW.nombre,
		NEW.apellido,
        NEW.estado,
		NEW.observaciones,
        NEW.rol     
	
    );

END //

DELIMITER ;



call asp_altaEmpleado('flor', 'pswflor','florencia', 'diaz', null, null, null, @resultado);





-- ####################################################