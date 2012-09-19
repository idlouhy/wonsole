<html>
  <body>
    <form action="mongodb.php">
      <textarea></textarea>
      <input type="submit" />
    </form>

<pre>
<?php
// connect
$m = new Mongo();

// select a database
$db = $m->comedy;

// select a collection (analogous to a relational database's table)
$collection = $db->cartoons;

// add a record
$obj = array( "title" => "Hello World", "author" => "Ivo Dlouhy" );
$collection->insert($obj);

// add another record, with a different "shape"
#$obj = array( "title" => "XKCD", "online" => true );
#$collection->insert($obj);

// find everything in the collection
$cursor = $collection->find();

// iterate through the results
foreach ($cursor as $obj) {
    echo $obj["title"] . "\n";
    var_dump($obj);
}

?>
</pre>
  </body>
</html>
