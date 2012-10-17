var apilication_root = __dirname,
    express = require("express"),
    mongo = require("mongodb");
    pubnub = require('pubnub');
    path = require('path');

    api = express();

var server = new mongo.Server('localhost', 27017, {auto_reconnect: true});
var db = new mongo.Db('library', server);
  
db.open(function(err, db) {
  if (err) {
        console.log("ERROR " + err);
  }
});

pn = pubnub.init({
  publish_key: "pub-a47de1d5-fb27-49e6-877e-ce4198efee32",
  subscribe_key: "sub-5d0d7b0c-06fe-11e2-897a-b30c99bcb2fd"
});

pn.publish({
  channel : "library",
  message : "server started"
});


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
  res.send("");
});

//GET /api/books
api.get('/api/:collection', function (req, res) {
  console.log("GET /api/" + req.params.collection + " " + JSON.stringify(req.body));
  db.collection(req.params.collection, function(err, collection) {
    collection.find({}).toArray(function(err, items) {
      if (!err) {
        return res.send(items);
      }
      else {
        res.status("404");
        return res.send(err);
      }
    });
  });
});

//GET /api/books/:id
api.get('/api/:collection/:id', function (req, res) {
  console.log("GET /api/" + req.params.collection + "/" + req.params.id + " " + JSON.stringify(req.body));
  db.collection(req.params.collection, function(err, collection) {
    collection.find({"_id": req.params.id}).toArray(function(err, items) {
      if (!err) {
        return res.send(items);
      }
      else {
        res.status("404");
        return res.send(err);
      }
    });
  });
});

//POST /api/collection
api.post('/api/:collection', function (req, res) {
  console.log("POST /api/" + req.params.collection + " " + JSON.stringify(req.body));

  db.collection(req.params.collection, function(err, collection) {
    collection.insert(req.body, {safe: true}, function(err, result) {
      if (!err) {
        return res.send(JSON.stringify(result[0]));
      }
      else {
        res.status("404");
        return res.send(err);
      }
    });
  });

});

//PUT /api/collection/id
api.put('/api/:collection/:id', function (req, res) {
  console.log("POST /api/" + req.params.collection + "/" + req.params.id + " " + JSON.stringify(req.body));
  
  db.collection(req.params.collection, function(err, collection) {
    delete req.body["_id"]; //remove _id so that mongdb does not complain
    collection.update({"_id": mongo.BSONPure.ObjectID(req.params.id)}, req.body, {safe: true}, function(err, result) {
      if (!err) {
        return res.send(JSON.stringify(result[0]));
      }
      else {
        console.log(err);
        res.status("404");
        return res.send(err);
      }
    });
  });
});

//DELETE /api/collection/id
api.delete('/api/:collection/:id', function (req, res) {
  console.log("DELETE /api/" + req.params.collection + "/" + req.params.id + " " + JSON.stringify(req.body));

  db.collection(req.params.collection, function(err, collection) {
    collection.remove({"_id": mongo.BSONPure.ObjectID(req.params.id)}, {safe: true}, function(err, result) {
      if (!err) {
        return res.send(JSON.stringify(result[0]));
      }
      else {
        res.status("404");
        return res.send(err);
      }
    });
  });

});

//OPTIONS
api.options('/apai/:collection/:id', function (req, res){
  console.log("OPTIONS /api/" + req.params.collection + "/" + req.params.id + " " + JSON.stringify(req.body));
  return res.send('');
});

api.listen(4000);
