var express = require('express');
var router = express.Router();
var path = require('path');
//var Users = require('../models/users');

router.get('/', function(req,res,next){
    res.sendFile(path.join(__dirname, '../public/views/contact.html'));
});

//router.post('/', function(req,res,next){
//    Users.create(req.body, function(err, post){
//        if(err)
//            next(err);
//        else
//            res.redirect('/index');
//    })
//});

module.exports = router;