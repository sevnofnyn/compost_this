var express = require('express');
var router = express.Router();
var path = require('path');
//var Users = require('../models/users');

router.get('/', function(req,res,next){
    console.log('hey there');
    res.sendFile(path.join(__dirname, '../public/views/about.html'));
});

module.exports = router;
