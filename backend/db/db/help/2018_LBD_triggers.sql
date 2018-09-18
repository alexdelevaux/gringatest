
-- -----------------------------------------------------
--  Triggers
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Creacion de tabla para auditorias
-- -----------------------------------------------------

USE `lbd201807comercio` ;



CREATE TABLE Log_access(

	codigo INT NOT NULL,
    usuarioOperacion VARCHAR(100) NOT NULL,
    fecha DATETIME NOT NULL,
    operacion VARCHAR(15) NOT NULL,
    maquina VARCHAR(100) NOT NULL,
	`idEmpleado` INT NOT NULL,
    `usuario` VARCHAR(45) NOT NULL,
	`contrasena` VARCHAR(45) NULL,
	`nombre` VARCHAR(45) NULL,
	`apellido` VARCHAR(45) NULL,
	`domicilio` VARCHAR(50) NULL,
	`telefono` VARCHAR(10) NULL,
	`estado` CHAR(1) NULL,
	`observaciones` TEXT(30) NULL,
	`rol` CHAR(1) NULL,

    PRIMARY KEY (codigo)
)ENGINE=INNODB;



-- -----------------------------------------------------
-- Trigger INSERT
-- -----------------------------------------------------
DROP TRIGGER registro_altas;

DELIMITER //

CREATE TRIGGER registro_altas AFTER INSERT ON empleados 
FOR EACH ROW 
BEGIN

DECLARE cod INT;

    SET cod = ((SELECT Max(codigo) FROM Log_access) + 1);
	
    IF (cod IS NULL) THEN
    
		SET cod = 1;
        
    END IF;
    
    INSERT INTO `lbd201807comercio`.`log_access` (`codigo`,`usuarioOperacion`, `fecha`, `operacion`, 
										`maquina`, `idEmpleado`, `usuario`, `contrasena`, `nombre`, 
										`apellido`, `domicilio`, `telefono`, `estado`, 
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
        NEW.domicilio,
        NEW.telefono,
        NEW.estado,
		NEW.observaciones,
        NEW.rol     
	
    );

END //

DELIMITER ;



CALL asp_altaEmpleado(700, 'fdsfds', 'fds', 'rew', 'ryt',
						'fsdfsdd', '38764578',null ,null ,null , @resultado);   
                        


-- -----------------------------------------------------
-- Trigger DELETE
-- -----------------------------------------------------

DELIMITER //

CREATE TRIGGER registro_bajas AFTER DELETE ON empleados 
FOR EACH ROW 

BEGIN

DECLARE cod INT;

    SET cod = ((SELECT Max(codigo) FROM Log_access) + 1);

	IF (cod IS NULL) THEN
		SET cod = 1;
    END IF;
	
    INSERT INTO Log_access (`codigo`, `usuario`, `fecha`, `operacion`, `maquina`) 
		VALUES (cod, SUBSTRING(USER(),1,(instr(user(),'@')-1)), 
				NOW(), 'DELETE', SUBSTRING(USER(), (INSTR(USER(),'@')+1)));

END //

DELIMITER ;



-- -----------------------------------------------------
-- Trigger UPDATE
-- -----------------------------------------------------

DELIMITER //

CREATE TRIGGER registro_modificados AFTER UPDATE ON empleados 
FOR EACH ROW 

BEGIN

	DECLARE cod INT;

    SET cod = ((SELECT Max(codigo) FROM Log_access) + 1);

    IF (cod IS NULL) THEN
		SET cod = 1;
    END IF;
	
    INSERT INTO Log_access (`codigo`, `usuario`, `fecha`, `operacion`, `maquina`) 
		VALUES (cod, SUBSTRING(USER(),1,(instr(user(),'@')-1)), 
				NOW(), 'UPDATE', SUBSTRING(USER(), (INSTR(USER(),'@')+1)));

END //

DELIMITER ;

DELIMITER ;;
 CREATE  TRIGGER `LBD2018G04Bar`.`Usuarios_AFTER_UPDATE` AFTER UPDATE ON `Usuarios`
 FOR EACH ROW
BEGIN
	INSERT INTO	aud_Usuarios
    SELECT		0, SUBSTRING_INDEX(current_user(), '@', 1), 'UPDATE-ANTES', NOW(),
				(select SUBSTRING_INDEX(host, ':', 1) from information_schema.processlist 
					WHERE ID=connection_id()),
                OLD.IdUsuario, OLD.Usuario, OLD.Password, OLD.Nombre,
                OLD.Apellido, OLD.Tipo, OLD.Estado, OLD.IdRol;
	
    INSERT INTO	aud_Usuarios
    SELECT		0, SUBSTRING_INDEX(current_user(), '@', 1), 'UPDATE-DESPUES', NOW(),
				(select SUBSTRING_INDEX(host, ':', 1)
                from information_schema.processlist WHERE ID=connection_id()),
                NEW.IdUsuario, NEW.Usuario, NEW.Password, NEW.Nombre, 
                NEW.Apellido, NEW.Tipo, NEW.Estado, NEW.IdRol;
END ;;
DELIMITER ;


-- ===========================================================================================
-- ALE


-- trigger:  Alta skill


DROP TRIGGER IF EXISTS trigger_audit_skills;
DELIMITER // 

	CREATE TRIGGER `trigger_audit_skills` 
    AFTER INSERT ON `skills` FOR EACH ROW 

BEGIN  
		INSERT INTO audit_skills 
        VALUES (
			
            DEFAULT, -- id
			'I',	 -- Tipo de operacion: Insert
			NOW(),	 -- fecha y hora del momento del insert 
			SUBSTRING_INDEX(USER(), '@', -1), -- Maquina	
			SUBSTRING_INDEX(USER(), '@', 1), -- Usuario
		   
		   
		   
			NEW.IdSkill,
			NEW.IdPersona, -- id del profesor registrado 
			NEW.IdConocimiento,
			NEW.IdCategoria,
			NEW.IdNivel,
			NEW.FechaUltimaModificacion,
			NEW.Observaciones
			
			
			);
        
        
END // 

DELIMITER ;

