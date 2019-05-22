var express     = require('express');
var router      = express.Router();
var db          = require('../db/connection');

// Creación de usuario
router.post('/', (req, res) => {
    // https://www.w3schools.com/nodejs/nodejs_mysql_insert.asp
    res.setHeader("Content-Type","application/json");

    var name = req.body.name;
    var email = req.body.email;

    var sql = `INSERT INTO user VALUES(NULL, '${name}', '${email}')`;

    db.query(sql, function (err, result) {
        if (err){
            res.status(400).send(JSON.stringify(err, null, "\t"));
        }
        console.log(JSON.stringify(result, null, "\t"));
        res.status(200).send(JSON.stringify(result, null, "\t"));
    });
});

// Verificación de usuario por correo
router.get('/:email', (req, res) => {
    res.setHeader("Content-Type","application/json");

    var email = req.params.email;

    var sql = `SELECT * FROM user WHERE email = '${email}'`;

    console.log(sql);

    db.query(sql, function (err, result) {
        if (err){
            res.status(400).send(JSON.stringify(err, null, "\t"));
        }

        res.status(200).send(JSON.stringify(result, null, "\t"));
    });
});

module.exports = router;