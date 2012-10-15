var apilication_root = __dirname,
    express = require("express"),
    path = require("path"),
    mongoose = require('mongoose');

    mongo = require("mongodb");
    pubnub = require('pubnub');
    api = express();

  var server = new mongo.Server('localhost', 27017, {auto_reconnect: true});
  var db = new mongo.Db('books', server);
  
  db.open(function(err, db) {
    if (!err) {
      db.collection("devel", function(err, collection) {
        if (!err) {
          console.log("connected to db...");
        }
      });
    }
  });

  pn = pubnub.init({
    publish_key: "pub-a47de1d5-fb27-49e6-877e-ce4198efee32",
    subscribe_key: "sub-5d0d7b0c-06fe-11e2-897a-b30c99bcb2fd"
  });

  pn.publish({
    channel : "books",
    message : 'server started'
  });

//mongoose.connect('mongodb://localhost/books');

//CORS middleware
var allowCrossDomain = function(req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE,HEAD,OPTIONS');
  res.header('Access-Control-Allow-Headers', 'Content-Type,Authorization,X-Authorization');
  next();
}

api.configure(function () {
  api.use(express.bodyParser());
  api.use(express.methodOverride());
  api.use(allowCrossDomain);
  api.use(api.router);
  api.use(express.static(path.join(apilication_root, "public")));
  api.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
});

//GET /api
api.get('/api', function (req, res) {
  res.send('api');
});

//GET /api/books
api.get('/api/:collection', function (req, res) {
  console.log("GET /api/" + req.params.collection + " " + JSON.stringify(req.body));
  db.collection(req.params.collection, function(err, collection) {
    collection.find({}).toArray(function(err, items) {
      return res.send(items);
    });
  });
});

//GET /api/books/:id
api.get('/api/:collection/:id', function (req, res) {
  console.log("GET /api/" + req.params.collection + "/" + req.params.id + " " + JSON.stringify(req.body));
  db.collection(req.params.collection, function(err, collection) {
    collection.find({"_id": req.params.id}).toArray(function(err, items) {
      return res.send(items);
    });
  });
});

//POST /api/collection
api.post('/api/:collection', function (req, res) {
  console.log("POST /api/" + req.params.collection + " " + JSON.stringify(req.body));

  db.collection(req.params.collection, function(err, collection) {
    collection.insert(req.body, {safe: true}, function(err, result) {
      return res.send(JSON.stringify(result[0]));
    });
  });

});

//POST /api/collection/id
api.put('/api/:collection/:id', function (req, res) {
  console.log("POST /api/" + req.params.collection + "/" + req.params.id + " " + JSON.stringify(req.body));
  
  db.collection(req.params.collection, function(err, collection) {
    collection.update({"_id": mongo.BSONPure.ObjectID(req.params.id)}, req.body, {safe: true}, function(err, result) {
      return res.send(JSON.stringify(result[0]));
    });
  });
});

//Delete book
api.delete('/api/books/:id', function (req, res){
  /*
  return BookModel.findById(req.params.id, function (err, book) {
    if(book != null){
      return book.remove(function (err) {
        if (!err) {
          console.log("removed");
          return res.send('');
        } else {
          console.log(err);
        }
      });
    }
    else {
	return res.send("The book does not exist in this database");
    }
  });
*/
});


api.options('/api/books/:id', function (req, res){
  return res.send('');
});

api.listen(5000);
