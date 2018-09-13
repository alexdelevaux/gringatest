const db = require('../config/db.config.js');
const Empleado = db.empleados;

// Post a Customer
exports.create = (req, res) => {	
	// Save to MySQL database
	let empleado = req.body;
	Empleado.create(empleado).then(result => {		
		// Send created customer to client
		res.json(result);
	});
};


 
// Fetch all Customers
exports.findAll = (req, res) => {
	Empleado.findAll().then(empleados => {
	  // Send all empleados to Client
	  res.json(empleados);
	});
};

// Find a Customer by Id
exports.findById = (req, res) => {	
	Empleado.findById(req.params.empleadoId).then(empleado => {
		res.json(empleado);
	})
};
 
// Update a Customer
/* exports.update = (req, res) => {
	let customer = req.body;
	let id = req.body.id;
	Customer.update(customer, 
					 { where: {id: id} }
				   ).then(() => {
						 res.status(200).json({msg:"updated successfully a customer with id = " + id});
				   });	
};
  */
// Delete a Customer by Id
/* exports.delete = (req, res) => {
	const id = req.params.customerId;
	Customer.destroy({
	  where: { id: id }
	}).then(() => {
	  res.status(200).json({msg:'deleted successfully a customer with id = ' + id});
	});
}; */