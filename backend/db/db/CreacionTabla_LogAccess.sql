--  04/09/2018
-- Fernanda Valle
-- Alejandro Cisneros Delevaux
-- La Gringa

-- Crea tabla Log_Access para auditoria de Triggers


USE proyecto;

DROP TABLE IF EXISTS Log_access;

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
