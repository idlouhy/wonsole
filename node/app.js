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

app.get('/api', function (req, res) {
  res.send('REST api running');
});

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

app.listen(4000);
