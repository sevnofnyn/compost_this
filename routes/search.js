var express = require('express');
var router = express.Router();
var pg = require('pg');
//var database = require('../models/database');
var connectionString = process.env.DATABASE_URL || 'postgres://localhost:5432/compost';

var client = new pg.Client(connectionString);
client.connect();

router.post('/', function(req, res, next){
    console.log('hello', req.body);
    var data= {text: req.body.name};
    var results = [];
    pg.connect(connectionString,function(err, client,done){

        // Handle Errors
        if(err) {
            next(err);
        } else {
            // SQL Query > Select Data
            var query = client.query('SELECT * FROM item WHERE lower(item) LIKE lower($1)', [data.text]);

            // Stream results back one row at a time
            query.on('row', function (row) {
                results.push(row);
            });

            // After all data is returned, close connection and return results
            query.on('end', function () {
                client.end();
                //console.log('banana', results);
                return res.json(results);

            });
        }
    });

});

module.exports = router;