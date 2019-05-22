var express     = require('express');
var router      = express.Router();
var db          = require('../db/connection');

// Crear una sesión
router.post('/', (req, res) => {
    res.setHeader("Content-Type","application/json");

    var userId = req.body.userId;

    var sql = `INSERT INTO session VALUES(NULL, ${userId}, NOW())`;

    console.log(sql);

    db.query(sql, function (err, result) {
        if (err){
            res.status(400).send(JSON.stringify(err, null, "\t"));
        }

        res.status(200).send(JSON.stringify(result, null, "\t"));
    });
});

module.exports = router;