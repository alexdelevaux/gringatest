module.exports = function(app) {
 
    const empleados = require('../controller/empleado.controllers.js');
 
    // Create a new Customer
    app.post('/api/empleados', empleados.create);
 
    // Retrieve all Customer
    app.get('/api/empleados', empleados.findAll);
 
    // Retrieve a single Customer by Id
    app.get('/api/empleados/:empleadoId', empleados.findById);
 
    // Update a Customer with Id
    // app.put('/api/customers', customers.update);
 
    // Delete a Customer with Id
    // app.delete('/api/customers/:customerId', customers.delete);
}