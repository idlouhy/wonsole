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
    if(!err) {
      console.log("We are connected");
//      db.createCollection('devel', {safe:true}, function(err, collection) {
//        console.log(collection);
//      });
      db.collection("books", function(err, collection) {
	collection.find().toArray(function(err, items) {
          console.log(items);
        });
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

mongoose.connect('mongodb://localhost/books');

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

var Schema = mongoose.Schema;

var Book =
  new Schema({
//    id: { type: Number, required: true },
    title: { type: String, required: false },
    author: { type: String, required: false }
});

var BookModel = mongoose.model('Book', Book);

//GET /api
api.get('/api', function (req, res) {
  res.send('api');
});

//GET /api/books
api.get('/api/books', function (req, res) {
/*
    db.books.find({}, function(err, book) {
        users.forEach( function(b) {          
          console.log(b);
          return b;
        });
    });
*/
  return "";
  /*
  return BookModel.find(function (err, books) {
    if (!err) {
      return res.json(books);
    } else {
      return console.log(err);
    }
  });
  */
});


//GET /api/books/:id
api.get('/api/books/:id', function (req, res) {
  db.open(function(err, db) {
    if(!err) {
      db.collection("books", function(err, collection) {
	collection.find({"_id": req.param.id}).toArray(function(err, items) {
          return items;
        });
      });
    }
  });
});


//POST /api/books
api.post('/api/books', function (req, res){
  var book;
  console.log("POST: ");
  console.log(req.body);
  book = new BookModel({
    title: req.body.title,
    author: req.body.author
  });
  book.save(function (err) {
    if (!err) {
      return console.log("created");
    } else {
      return console.log(err);
    }
  });
  return res.send(book);
});


//Update a book by id
api.put('/api/books/:id', function (req, res){
  return BookModel.findById(req.params.id, function (err, book) {
    book.title = req.body.title;
    book.author = req.body.author;
    return book.save(function (err) {
      if (!err) {
        console.log("updated");
      } else {
        console.log(err);
      }
      return res.send(book);
    });
  });
});

//Delete book
api.delete('/api/books/:id', function (req, res){
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
});


api.options('/api/books/:id', function (req, res){
  return res.send('');
});

api.listen(5000);
