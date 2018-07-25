const http = require('http');
const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

app.get('/', async (req, res, next) => {
  res.status(200).send({msg: 'Hello Node Server ~'});
});

const server = http.createServer(app);

server.listen(8000, () => {console.log('Server liston start')});