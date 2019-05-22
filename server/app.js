/*
npm install express --save
npm install mysql --save
npm install body-parser --save

# Para ejecutar
node app.js

# Links
https://expressjs.com/es/guide/routing.html
*/

var express = require('express');
var http    = require('http');
var app     = express();
const PORT  = 8001;

var BASE_URL = "/maletest/api/v1";

/* BODY PARSER (para rescatar parametros por body)*/
var bodyParser = require('body-parser');
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies
/* BODY PARSER */

/*---------------- Express Controller -----------------*/
var users = require('./controller/users.js');
var questions = require('./controller/questions.js');
var answers = require('./controller/answers.js');

app.use(BASE_URL+'/users', users);
app.use(BASE_URL+'/questions', questions);
app.use(BASE_URL+'/answers', answers);
/*---------------- Express Controller -----------------*/

http.createServer(app).listen(PORT, () => {
    console.log('Server started at http://localhost:'+PORT);
});