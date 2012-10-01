exports['example pass'] = function (test) {
  test.equal(1+1, 2);
  test.done();
}

exports['example fail'] = function (test) {
  test.equal(1+1, 3);
  test.done();
}
