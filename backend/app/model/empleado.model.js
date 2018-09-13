module.exports = (sequelize, Sequelize) => {
	const Empleado = sequelize.define('empleado', {
	  nombre: {
			type: Sequelize.STRING(50)
	  },
	  apellido: {
			type: Sequelize.STRING(50)
	  },
	  edad: {
		  type: Sequelize.INTEGER
	  }
	});
	
	return Empleado;
}