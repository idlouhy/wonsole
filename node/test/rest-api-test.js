var $ = require('jQuery');

exports['get_booklist_test'] = function (test) {
    test.expect(2);
    return $.getJSON('netlight.dlouho.net:9004/api/books', function (data) {
        test.ok(data[0].id === 1);
        test.ok(data[0].title === "Book1");
        test.done();
    });
    
}