const express = require('express')
const controller = require('../API/controllers')

const authentication = require('../API/MIDDLEWARE/authenticate')

const rout = express.Router();

rout.get('/details/:user_id', controller.getDetails);
rout.put('/update/:user_id', authentication, controller.updateDetails);
rout.get('/image/:user_id', controller.getImage);
rout.delete('/delete/:user_id', controller.deleteUser);
rout.post("/insert",authentication,controller.insertNewUser)

module.exports = rout;