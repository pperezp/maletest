var mysql = require('mysql');

var connectionData = {
    host: "localhost",
    user: "root",
    password: "",
    database: "maletestDB"
};

module.exports = mysql.createConnection(connectionData);