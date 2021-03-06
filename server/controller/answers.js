var express     = require('express');
var router      = express.Router();
var db          = require('../db/connection');

// Responder una pregunta
router.post('/', (req, res) => {
    res.setHeader("Content-Type","application/json");

    var questionId = req.body.questionId;
    var answer = req.body.answer;
    var sessionId = req.body.sessionId;

    var sql = `INSERT INTO answer VALUES(NULL, ${questionId}, ${answer}, ${sessionId})`;

    db.query(sql, function (err, result) {
        if (err){
            res.status(400).send(JSON.stringify(err, null, "\t"));
        }
        console.log(JSON.stringify(result, null, "\t"));
        res.status(200).send(JSON.stringify(result, null, "\t"));
    });
});

module.exports = router;