var express     = require('express');
var router      = express.Router();
var db          = require('../db/connection');

// Obtener preguntas
router.get('/', (req, res) => {
    res.setHeader("Content-Type","application/json");

    var sql = "SELECT * FROM question ORDER BY RAND()";

    console.log(sql);

    db.query(sql, function (err, result) {
        if (err){
            res.status(400).send(JSON.stringify(err, null, "\t"));
        }

        res.status(200).send(JSON.stringify(result, null, "\t"));
    });
});

module.exports = router;