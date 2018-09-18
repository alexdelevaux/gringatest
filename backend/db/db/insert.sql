use proyecto;



-- ----------------------------------------------------------------------------------------
-- Productos

INSERT INTO `proyecto`.`productos` (`producto`, `estado`, `precioVenta`, `observaciones`)
		VALUES ('Jugo naranja \"Celiacos\"', 'A', '120', '......');
        
INSERT INTO `proyecto`.`productos` (`producto`, `estado`, `precioVenta`, `observaciones`) 
		VALUES ('Jugo naranja \"Celiacos\" x 2L', 'A', '200', '2 Litros');
        
INSERT INTO `proyecto`.`productos` (`producto`, `estado`, `precioVenta`, `observaciones`) 
		VALUES ('Cereales ricos', 'A', '58', 'Muy ricos');
        
INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('mermelada durazno bc', '32.50');
        
INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('harina integral x250', '25');
        
INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('aceite de coco', '120');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('curcuma x100gr', '10');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('maizena x250g', '25');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('coca cola 500ml', '30');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('cafe dolca suave x500g', '120');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('yerba mate rosamonte x500g', '60');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('yerba mate la merced x500g', '67');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('yerba mate hija de la selva x500g', '85');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('harina pureza 000 x500g', '18');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('mermalada bc arandanos', '42');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('cafe arlistan x500g', '100');

INSERT INTO `proyecto`.`productos` (`producto`, `precioVenta`)
		VALUES ('cereal mix manazana light', '12');
        

-- ----------------------------------------------------------------------------------------
-- Rubros

INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Orgánico');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Sin TACC');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Sin azúcar');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Vegano');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Semillas');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Frutos secos');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Cereales');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Harinas');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Legumbres');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Condimentos');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Naturales');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Light');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Alimento Balanceado');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Refrigerados');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Proteínas');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Snacks');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Integral');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Caldos');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Panificados');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Con Stevia');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Chocolates');
INSERT INTO `proyecto`.`rubros` (`rubro`) VALUES ('Lacteos');

-- ----------------------------------------------------------------------------------------
-- Empleados

INSERT INTO `proyecto`.`empleados` (`nombre`, `apellido`, `usuario`, `contrasena`, `rol`, `estado`, `observaciones`) 
	VALUES ('laura', 'Gomez', 'lauragomez', 'pswlauragomez', 'a', 'a', 'los miercoles llega media hora mas tarde');

INSERT INTO `proyecto`.`empleados` (`nombre`, `apellido`, `usuario`, `contrasena`, `rol`, `estado`, `observaciones`) 
	VALUES ('Lourdes', 'Alvarez', 'lulialv', 'pswlulialv', 'v', 'a', null);

INSERT INTO `proyecto`.`empleados` (`nombre`, `apellido`, `usuario`, `contrasena`, `rol`, `estado`, `observaciones`) 
	VALUES ('Alfredo', 'Ruiz', 'freddy', 'pswfreddy', 'v', 'a', null);

INSERT INTO `proyecto`.`empleados` (`nombre`, `apellido`, `usuario`, `contrasena`, `rol`, `estado`, `observaciones`) 
	VALUES ('Magdalena', 'Sanchez', 'maguisan', 'pswmaguisan','a' , 'a', null);




-- ----------------------------------------------------------------------------------------
-- Proveedores

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('distribuidora lamadrid', '302799784310', '4363511', 'av. roca 1120', 'a', 'descuento 5% de contado para compra sup $1000');

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('Gomez Pardo', '302799124310', '4213514', 'gral paz 10', 'i', null);
-- de verdad. Google
INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('maxiconsumo', '272745168310', '4243817', 'av. alem 512', 'a', null);

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('medamax tucuman', '271234574341', '4253599', 'lamadrid 471, SMT', 'a', null);

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('makro', '30977645843', '4363897', 'prospero mena 766', 'a', 'contactar por whatsapp');

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('emilio luque mayoristas', '304215454230', '4312401', 'cariola 832, YB', 'a', 'preguntar por Carlitos');

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('el mundo de la golosina', '304453675430', ' 0381 432-2678', ' Av Kirchner 2349', 'a',null);

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('Expo Golosinas', '304219754130', '0381 556-6631', 'Av. Camino del Perú 1127, SMT', 'a', 'No abre los lunes');

INSERT INTO `proyecto`.`proveedores` (`razonSocial`, `CUIT`, `telefono`, `direccion`, `estado`, `observaciones`) 
	VALUES ('Distribuidora Mitre', '305458471530', ' 0381 432-5521', 'Av. Mitre 411, 4000 San Miguel de Tucumán', 'a', 'Flete incluido');





-- ----------------------------------------------------------------------------------------
-- Pedidos

INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `total`, `observaciones`)
	VALUES ('2', '1', '6250', '2 envios');
    
INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `total`, `estado`, `observaciones`)
	VALUES ('1', '1', '1338.50', 'c', '-');

INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `total`, `observaciones`)
	VALUES ('1', '1', '1000', '3 envios');
    
INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `total`, `observaciones`)
	VALUES ('3', '1', '300', 'llega el miercoles');
    
INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `total`, `observaciones`)
	VALUES ('1', '1', '300', 'controlar envio cereal mix sabor chocolate');

INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `fecha`, `total`)
	VALUES ('3', '1', '2018-07-10', '500');
    
INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `fecha`,`total`)
	VALUES ('2', '1', '2018-07-10', '751');
    
INSERT INTO `proyecto`.`pedidos` (`idProveedor`, `idEmpleado`, `fecha`,`total`)
	VALUES ('1', '1', '2018-07-10', '912.70');



-- ----------------------------------------------------------------------------------------
-- Lineas Pedido
-- OJO! Al agregar cosas hay que tener en cuenta que Lineas pedido obtiene como Fk a IdPedido y a IdProveedor
-- Las cuales vienen (las dos juntas) de Pedido. 
-- Por lo cual, hay que poner en este insert los PARES DE VALORES de IdPedido, IdProveedor que aparezcan en Pedidos



-- Pedido 1 (2, 2)

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('2', '2', '2', '10', '542');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('3', '2', '2', '1', '14');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('4', '2', '2', '12', '42');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('5', '2', '2', '6', '52');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('6', '2', '2', '10', '93');



-- Pedido 2 (3,1)

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('7', '3', '1', '10', '12');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('14', '3', '1', '25', '7.50');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('12', '3', '1', '7', '21.40');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('17', '3', '1', '4', '25.35');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('15', '3', '1', '20', '12.47');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('13', '3', '1', '12', '14.20');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('2', '3', '1', '3', '120');



-- Pedido 3 (7, 3)

-- CONTROLAR QUE ME DA ERROR ESTO. VER BIEN LO DE LOS PRECIOS.
-- CONTROLAR LA SUMA DEL TOTAL DEL PEDIDO 1. CREO QUE NO ESTÁ COMPLETA

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('4', '7', '3', '20', '39.00');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('12', '7', '2', '3', '60.35');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('10', '7', '3', '12', '22.70');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('17', '7', '3', '6', '120.10');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('15', '7', '3', '6', '57');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('16', '7', '3', '5', '31.47');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('9', '7', '3', '1', '300');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('7', '7', '3', '12', '27.35');



-- ----------------------------------------------------------------------------------------
-- Compras

-- Faltarian mas compras para completar el pedido.
-- Costo Pedido = 500
INSERT INTO `proyecto`.`compras` (`idProveedor`, `idPedido`, `fecha`, `total`) 
		VALUES ('2', '2', '2018-07-20', '150');
        
-- Faltarian mas compras para completar el pedido.
-- Costo Pedido = 1338.50
INSERT INTO `proyecto`.`compras` (`idProveedor`, `idPedido`, `fecha`, `total`) 
		VALUES ('1', '3', '2018-07-29', '808.1');        


-- descuento. El costo era 
INSERT INTO `proyecto`.`compras` (`idProveedor`, `idPedido`, `fecha`, `total`) 
		VALUES ('3', '7', '2018-08-02', '450');
        
-- Con estas compras referenciadas al mismo Pedido, se pasa de estado
--  en el pedido y pasa a estar como pedido finalizado.
UPDATE `proyecto`.`pedidos` SET `estado`='f' WHERE `idPedido`='7' and`idProveedor`='3';



-- ----------------------------------------------------------------------------------------
-- Lineas Compra
-- ------------------------------------------------------------------------------------------------------^
-- Las lineas compras son copy paste de las lineas pedido
-- Las que estan comentadas son las que faltan para completar el pedido


-- Pedido 1 (2, 2)

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('2', '2', '2', '10', '542');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('3', '2', '2', '1', '14');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('4', '2', '2', '12', '42');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('5', '2', '2', '6', '52');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('6', '2', '2', '10', '93');



-- Pedido 2 (3,1)
-- Pedido incompleto.
-- faltan las dos ultimas filas

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('7', '3', '1', '10', '12');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('14', '3', '1', '25', '7.50');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('12', '3', '1', '7', '21.40');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('17', '3', '1', '4', '25.35');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('15', '3', '1', '20', '12.47');

-- INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
-- 	VALUES ('13', '3', '1', '12', '14.20');

-- INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
-- 	VALUES ('2', '3', '1', '3', '120');


-- Total de la compra = 808.1



-- Pedido 3 (7, 3)
INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('4', '7', '3', '20', '399.00');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('12', '7', '3', '30', '410');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('10', '7', '3', '12', '22.70');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('17', '7', '3', '6', '310.10');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('15', '7', '3', '6', '298');

INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
	VALUES ('16', '7', '3', '5', '364');

-- INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
-- 	VALUES ('9', '7', '3', '1', '478');

-- INSERT INTO `proyecto`.`lineaspedido` (`idProducto`, `idPedido`, `idProveedor`, `cantidad`, `precioPedido`) 
-- 	VALUES ('7', '7', '3', '12', '146');


-- ^--------------------------------------------------------------------------------------------------------^




-- ----------------------------------------------------------------------------------------
-- Ventas


-- Ojo. En estas ventas hay productos que no tienen compra registrada

INSERT INTO `proyecto`.`ventas` (`idEmpleado`, `fecha`, `total`) 
		VALUES ('4', '2018-08-01', '210');
INSERT INTO `proyecto`.`ventas` (`idEmpleado`, `fecha`, `total`) 
		VALUES ('6', '2018-07-17', '300');
INSERT INTO `proyecto`.`ventas` (`idEmpleado`, `total`)
		VALUES ('5', '20');
INSERT INTO `proyecto`.`ventas` (`idEmpleado`, `total`) 
		VALUES ('5', '32.50');
INSERT INTO `proyecto`.`ventas` (`idEmpleado`, `fecha`, `total`)
		VALUES ('5', '2018-07-03', '12');
INSERT INTO `proyecto`.`ventas` (`idEmpleado`, `total`, `observaciones`)
		VALUES ('4', '250', 'descuento');
INSERT INTO `proyecto`.`ventas` (`idEmpleado`, `total`) 
		VALUES ('4', '120');




-- ----------------------------------------------------------------------------------------
-- Lineas Venta

INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`)
		VALUES ('1', '1', '1', '120');
INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`)
		VALUES ('1', '9', '3', '20');
INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`) 
		VALUES ('1', '15', '1', '30');
        
	
    
-- Venta con descuento
INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`)
		VALUES ('6', '11', '1', '25');
INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`) 
		VALUES ('6', '12', '1', '120');
INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`) 
		VALUES ('6', '14', '1', '25');
INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`)
		VALUES ('6', '19', '1', '85');
INSERT INTO `proyecto`.`lineasventa` (`idVenta`, `idProducto`, `cantidad`, `precioVenta`) 
		VALUES ('6', '23', '1', '12');


