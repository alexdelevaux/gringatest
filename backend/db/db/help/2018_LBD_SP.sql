-- Los más conocidos y usados

-- ===========================================================================
-- Para sacar el id de lo que estoy dando de alta 
-- No pasarlo como parámetro y calcularlo así


        set pid = (select MAX(IdProducto) from Productos) + 1;
 
 insert into Productos
        values(
        
			pid,
            
            pNombre,
            pColor,
            pPrecio,
            pIdCategoria
        );


-- ===========================================================================
-- CONTROLES


-- Numerico o alfabetico 
 Delimiter //
 
 create procedure j()
 begin
 
 IF(us IS NULL OR NOT us REGEXP '^[a-zA-Z0-9]+$') THEN 
		SET resultado = 'No puede existir un usuario vacio';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
    

   IF(nomb IS NULL OR NOT nomb REGEXP '^[a-z]+$') THEN 
		
        SET resultado = 'Solo debe contener caracteres alfabeticos';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
    

    
    IF(id IS NULL OR NOT id REGEXP '^[0-9]+$') THEN
        SET resultado = 'id vacio o no numerico';
        SELECT resultado;
        LEAVE SALIR;
	END IF;
    
end //
Delimiter ;


-- =================================================================================


-- SP para FECHAS


 date_format(v.Fecha, "%d/%m/%Y")

DELIMITER //

CREATE PROCEDURE `asp_topVentasxFecha`(fecha1 datetime, fecha2 datetime, OUT resultado varchar(100))

SALIR: BEGIN

-- Verdadero = 1
-- Falso = 0

	IF(fecha1 > fecha2) THEN
		
		SET resultado = 'Ingrese las fechas en orden correcto';
        SELECT resultado;
        LEAVE SALIR;
	END IF;
    
	IF(fecha1 IS NULL AND fecha2 IS NOT NULL) THEN
		
		SET resultado = 'Rango de fecha invalido';
        SELECT resultado;
        LEAVE SALIR;
        
	END IF;
    

-- TOP 10 de ventas desde la fecha más cercana
	IF(fecha1 IS NULL AND fecha2 IS NULL) THEN

		SELECT lineasventa.idProducto AS ID_Producto, producto AS Producto, 
				SUM(lineasventa.cantidad) AS Numero_de_Ventas, DATE(ventas.fecha) as Fecha 
		FROM lineasventa 
		JOIN ventas 
			ON lineasVenta.idVenta = ventas.idVenta
		JOIN productos 
			ON lineasventa.idProducto = productos.idProducto
		GROUP BY 1, 2
		ORDER BY Numero_de_Ventas DESC
		LIMIT 10; 
			
    END IF;

	IF(fecha1 IS NOT NULL AND fecha2 IS NULL) THEN
    
		SELECT lineasventa.idProducto AS ID_Producto, producto AS Producto, 
				SUM(lineasventa.cantidad) AS Numero_de_Ventas, DATE(ventas.fecha) AS Fecha 
		FROM lineasventa 
		JOIN ventas
			ON lineasVenta.idVenta = ventas.idVenta
		JOIN productos 
			ON lineasventa.idProducto = productos.idProducto
		WHERE ventas.fecha between fecha1 AND current_date()
		GROUP BY 1, 2
		ORDER BY Numero_de_Ventas DESC
		LIMIT 10; 
    
    END IF;


	IF(fecha1 IS NOT NULL AND fecha2 IS NOT NULL) THEN
    
		SELECT lineasventa.idProducto AS ID_Producto, producto AS Producto, 
				SUM(lineasventa.cantidad) AS Numero_de_Ventas, DATE(ventas.fecha) AS Fecha 
		FROM lineasventa 
		JOIN ventas 
			ON lineasVenta.idVenta = ventas.idVenta
		JOIN productos 
			ON lineasventa.idProducto = productos.idProducto
		WHERE ventas.fecha between fecha1 AND fecha2
		GROUP BY 1, 2
		ORDER BY Numero_de_Ventas DESC
		LIMIT 10; 
    
    END IF;
    

END //


DELIMITER ;




-- =================================================================================

DELIMITER //

CREATE PROCEDURE `asp_altaEmpleado` (id integer, us varchar(45), psw varchar(45), nomb varchar(45),
			ap varchar(45), domic varchar(50), tel varchar(10), est char(1), obs varchar(100), 
            rol char(1), OUT resultado varchar(100))


SALIR : BEGIN
SET resultado = 'Empleado creado con exito';
    
    
    IF((SELECT usuario FROM empleados WHERE idEmpleado = id) IS NOT NULL) THEN
		SET resultado = 'El id utilizado ya existe';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
    
    IF((SELECT idEmpleado FROM empleados WHERE usuario = us) IS NOT NULL) THEN
		SET resultado = 'El nombre de usuario debe ser unico';
        SELECT resultado;
        LEAVE SALIR;
	END IF;
    
    IF(id IS NULL OR NOT id REGEXP '^[0-9]+$') THEN
        SET resultado = 'id vacio o no numerico';
        SELECT resultado;
        LEAVE SALIR;
	END IF;
    
    IF(nomb IS NULL OR NOT nomb REGEXP '^[a-z]+$') THEN 
		
        SET resultado = 'Solo debe contener caracteres alfabeticos';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
    
	IF(ap IS NULL OR NOT ap REGEXP '^[a-z]+$') THEN 
         SET resultado = 'No puede existir un apellido vacio y solo debe contener caracteres alfabeticos';
         SELECT resultado;
        LEAVE SALIR;
    END IF;
    
    IF(us IS NULL OR NOT us REGEXP '^[a-zA-Z0-9]+$') THEN 
		SET resultado = 'No puede existir un usuario vacio';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
    
    IF(psw IS NULL OR NOT psw REGEXP '^[a-zA-Z0-9]+$') THEN 
		SET resultado = 'La contrasena no es valida';
		SELECT resultado;
        LEAVE SALIR;
    END IF;
    
-- 	IF(domic IS NULL) THEN 
-- 		SET domic = '-';
--     END IF;
--     
-- 	IF(tel IS NULL) THEN 
-- 		SET tel = '-';
--     END IF;
-- 
-- 	IF(obs IS NULL) THEN 
-- 		SET obs = '-';
--     END IF;

	IF(NOT tel REGEXP '^[0-9]+$' OR LENGTH(tel) < 7 ) THEN 
		SET resultado = 'Telefono invalido';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
	
    IF(est IS NULL) THEN 
		SET est = 'a';
	END IF;

    IF(NOT STRCMP(LOWER(est),'a') = 0 OR STRCMP(LOWER(est),'i') = 0 ) THEN 
        SET resultado = 'Estado ingresado invalido';
        SELECT resultado;
        LEAVE SALIR;
    END IF;
    
     IF(rol IS NULL) THEN 
		SET rol = 'v';
       
	END IF;
    
    
    IF(NOT STRCMP(LOWER(rol),'v') = 0 OR STRCMP(LOWER(rol),'a') = 0 ) THEN 
		SET resultado = 'Rol ingresado invalido';
		SELECT resultado;
        LEAVE SALIR;
    END IF;
	

INSERT INTO `lbd201807comercio`.`empleados` (`idEmpleado`, `usuario`, `contrasena`, 
			`nombre`, `apellido`, `domicilio`, `telefono`, `estado`, 
            `observaciones`, `rol`) 
			VALUES (id, us, psw, nomb, ap, domic, tel, est, obs, rol);

SELECT resultado;

END //

DELIMITER ;





-- =============================================================================================================
-- ALE

/* 3) Realizar un SP, llamado rsp_alta_skill, para dar de alta un skill, efectuando las comprobaciones mínimas (3 por lo menos).
		Devolver los mensajes de error correspondientes. [20 puntos] */
        
DROP PROCEDURE IF EXISTS rsp_alta_skill;
DELIMITER //

CREATE PROCEDURE `rsp_alta_skill`(pIdPersona int,pIdConocimiento int,pIdCategoria int,
						pIdNivel int,pFechaUltimaModificacion DATE,
                        pObservaciones VARCHAR(44))
PROC: BEGIN
/*
    EL procedimiento ingresa un nuevo profesor.
    */
    -- Declaracion de variables
    DECLARE pIdSkill INT;
    -- Manejo de errores
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
		BEGIN
			SELECT 0 as codigo, 'Error en la transaccion.' mensaje;
            SHOW ERRORS;
            ROLLBACK;
        END;
        
-- Control de parametros vacios
   
   IF (pIdPersona IS NULL OR pIdPersona = '') THEN
		SELECT 0 as codigo, 'Debe ingresar un Id persona.' mensaje;
        LEAVE PROC;
	END IF;

    
-- Control existencia ids
    
    IF NOT EXISTS (select p.IdPersona from personas p where p.IdPersona = pIdPersona ) THEN
		SELECT 0 as codigo, ' Persona no registrada' mensaje;
        LEAVE PROC;
	END IF;
    
    
-- Control del skill
    
	IF EXISTS (select s.IdSkill from skills s where s.IdPersona = pIdPersona and s.IdCategoria = pIdCategoria and s.IdConocimiento = pIdConocimiento ) THEN
		SELECT 0 as codigo, ' skill ya registrado' mensaje;
        LEAVE PROC;
	END IF;   
	
    

    START TRANSACTION;
    
		SET pIdSkill = 1 + (SELECT COALESCE(MAX(skills.IdSkill),0) FROM skills);
		select pIdSkill;
        
		INSERT INTO `Skills` (`IdSkill`, `IdPersona`, `IdConocimiento`,
								`IdCategoria`, `IdNivel`, 
                                `FechaUltimaModificacion`, `Observaciones`)
                                
		VALUES (
        
        
        
        pIdSkill,
        pIdPersona,
        pIdConocimiento,
        pIdCategoria,
        pIdNivel,
        pFechaUltimaModificacion,
        pObservaciones);
        
        
		SELECT pIdSkill AS codigo, 'Registro Exitoso.' mensaje;
	
    COMMIT;
    
    
    
END //

DELIMITER ;

call rsp_alta_skill(1,17,44,2,'2013/08/12', 'En uso actualmente');
