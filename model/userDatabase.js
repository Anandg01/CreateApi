const Sequelize = require('sequelize')

const sequelize = require('../util/dataBase')

const user = sequelize.define('user', {
    user_id: {
        type: Sequelize.UUID,
        default:Sequelize.UUIDV4,
        unique:true,
        alowNull:false,
    },
    user_name: {
        type: Sequelize.STRING
    },
    user_email: {
        type: Sequelize.STRING,
        alowNull: false,
        unique: true
    },
    user_password: Sequelize.STRING,
    user_image: Sequelize.STRING,
    total_orders: {
        type: Sequelize.INTEGER,
        defaultValue: 0
    },
    last_logged_in: {
        type: Sequelize.DATE
    }
});

module.exports = user;