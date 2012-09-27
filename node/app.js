var application_root = __dirname,
    express = require("express"),
    path = require("path"),
    mongoose = require('mongoose');
    pubnub = require('pubnub');
    app = express();

  pn = pubnub.init({
    publish_key: "pub-a47de1d5-fb27-49e6-877e-ce4198efee32",
    subscribe_key: "sub-5d0d7b0c-06fe-11e2-897a-b30c99bcb2fd"
  });

  pn.publish({
    channel : "books",
    message : 'server started'
  });

mongoose.connect('mongodb://localhost/books');

app.configure(function () {
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(app.router);
  app.use(express.static(path.join(application_root, "public")));
  app.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
});

var Schema = mongoose.Schema;

var Book =
  new Schema({
    id: { type: Number, required: true },
    title: { type: String, required: true }
});

var BookModel = mongoose.model('Book', Book);


//REST api
app.get('/api', function (req, res) {
  res.send('REST api running');
});

//List all the books
app.get('/api/books', function (req, res) {
  return BookModel.find(function (err, books) {
    if (!err) {
      return res.send(books);
    } else {
      return console.log(err);
    }
  });

  pn.publish({
    channel : "books",
    message : 'loaded list of books'
  });

});

//Add a single book
app.post('/api/books', function (req, res){
  var book;
  console.log("POST: ");
  console.log(req.body);
  book = new BookModel({
    id: req.body.id,
    title: req.body.title
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

//Get single book
app.get('/api/books/:id', function (req, res) {
    return BookModel.findById(req.params.id, function (err, book) {
        if (!err) {
            return res.send(book);
        } else {
            return console.log(err);
        }
    });
});

//Update a book by id
app.put('/api/books/:id', function (req, res){
  return BookModel.findById(req.params.id, function (err, book) {
    book.id = req.body.id;
    book.title = req.body.title;
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
app.delete('/api/books/:id', function (req, res){
  return BookModel.findById(req.params.id, function (err, book) {
    return book.remove(function (err) {
      if (!err) {
        console.log("removed");
        return res.send('');
      } else {
        console.log(err);
      }
    });
  });
});

app.listen(4000);
