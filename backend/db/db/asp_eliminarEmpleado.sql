--  04/09/2018
-- Fernanda Valle
-- Alejandro Cisneros Delevaux
-- La Gringa

-- stored procedure


-- =========	ELIMINAR EMPLEADO - SP	========================================================================


USE `proyecto` ;

DROP PROCEDURE IF EXISTS asp_eliminarEmpleado;
DELIMITER //

CREATE PROCEDURE `asp_eliminarEmpleado` (id INTEGER, OUT resultado varchar(100))
SALIR: BEGIN

SET resultado = 'Empleado eliminado con exito.';

	IF((SELECT empleados.idEmpleado FROM empleados WHERE empleados.idEmpleado = id) IS NULL) THEN
		SET resultado = 'El empleado ingresado no existe.';
        SELECT resultado;
		LEAVE SALIR;
	END IF;
    
    
	IF(( SELECT idventa FROM ventas WHERE  ventas.idEmpleado = id limit 1 ) IS NOT NULL) THEN
	
		SET resultado = 'No se puede elimiar empleado. Ventas asociadas';	
        SELECT resultado;
        LEAVE SALIR;
	END IF;

	IF(( SELECT idPedido FROM pedidos WHERE pedidos.idEmpleado = id limit 1 ) IS NOT NULL) THEN
	
		SET resultado = 'No se puede elimiar empleado. Pedidos asociadas';	
        SELECT resultado;
        LEAVE SALIR;
	END IF;

    
    DELETE FROM empleados WHERE empleados.idempleado = id;
    SELECT resultado;

END //


DELIMITER ;


SET @resultado = '';

CALL asp_eliminarEmpleado(8, @resultado);

CALL asp_eliminarEmpleado(99, @resultado);

CALL asp_eliminarEmpleado(4, @resultado);


