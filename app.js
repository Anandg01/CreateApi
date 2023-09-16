const express = require("express")
const bodyParser = require('body-parser')
const app = express();
const cors = require('cors')
require('dotenv').config();
const sequelize = require('../QuadBTask/util/dataBase')
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }));


const router = require('../QuadBTask/API/routes')

app.use(cors())

app.use(router)
sequelize.sync()
    .then(() => {
        app.listen(2000, console.log("server running on port", process.env.PORT))
    })
    .catch(err => console.log(err, "error in database"))