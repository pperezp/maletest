/*
npm install express --save
npm install mysql --save
npm install body-parser --save

node app.js
*/

var express = require('express');
var http    = require('http');
var app     = express();
const PORT  = 8001;

var mysql   = require('mysql');
var datosConexion = {
    host: "localhost",
    user: "root",
    password: "",
    database: "maletestDB"
};
var con = mysql.createConnection(datosConexion);

var BASE_URL = "/maletest/api/v1";

/* BODY PARSER (para rescatar parametros por body)*/
var bodyParser = require('body-parser');
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies
/* BODY PARSER */

/*---------------- Express Controller -----------------*/
app.post(BASE_URL+'/users', (req, res) => {
    // https://www.w3schools.com/nodejs/nodejs_mysql_insert.asp
    res.setHeader("Content-Type","application/json");

    var name = req.body.name;
    var email = req.body.email;

    // Acá falta validar que el correo no exista en la base de datos

    var sql = `INSERT INTO user VALUES(NULL, '${name}', '${email}')`;

    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result, null, "\t"));
        res.status(200).send(JSON.stringify(result, null, "\t"));
    });
});
/*---------------- Express Controller -----------------*/

http.createServer(app).listen(PORT, () => {
    console.log('Server started at http://localhost:'+PORT);
});