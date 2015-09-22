var express = require('express');
var router = express.Router();
var path = require('path');

/* GET home page. */

router.get('/', function(req, res, next) {
  console.log('hellow');
  res.sendFile(path.join(__dirname, '../public/views/index.html'));
});

module.exports = router;

//THIS BREAKS MY INDEX??????????????????
//CHANGED ALL STUFF FROM CATS TO COMPOST
//var express = require('express');
//var router = express.Router();
//var path = require('path');
//
//var mongoose = require('mongoose');
//
//mongoose.connect('mongodb://localhost/basic_walking_skeleton');
//// add composts to database
//var Compost = mongoose.model('Compost', {name:String});
//router.post('/add', function(request, response, next){
//  var scrap = new Compost({name: request.body.name});
//  scrap.save(function(err){
//    if(err) console.log('meow %s', err);
//    response.send(scrap.toJSON());
//    next();
//  });
//});
////get composts from database
//router.get('/composts', function(request, response, next){
//  return Compost.find({}).exec(function(err, composts){
//    if(err) throw new Error(err);
//    response.send(JSON.stringify(composts));
//    next();
//  });
//});
//
//
////renders html page
//router.get('/', function(req, res, next){
//  //console.log('Here is a console log');
//
//  //var file = req.params[0] || 'views/index.html';
//
//  res.sendFile(path.join(__dirname, '../public/views/index.html'));
//  // next();
//});
//
//module.exports= router;

