var PUBNUB = require('pubnub');

var channel = 'unit-test-pubnub-nodejs';

var pubnub = PUBNUB.init({
    publish_key: "pub-a47de1d5-fb27-49e6-877e-ce4198efee32",
    subscribe_key: "sub-5d0d7b0c-06fe-11e2-897a-b30c99bcb2fd"
});

var publish_dummy = function (channel, callback) {
    if (callback === null) {
        callback = function () { };
    }
    return pubnub.publish({
        channel: channel,
        message: {
            test: "test"
        },
        callback: callback
    });
};

exports['publish_test'] = function (test) {
    test.expect(2);
    return publish_dummy(channel, function (response) {
        test.ok(response[0] === 1);
        test.ok(response[1] === "Sent");
        test.done();
    });
};

exports['time_test'] = function (test) {
    test.expect(1);
    return pubnub.time(function (time) {
        test.ok(time);
        test.done();
    });
};

exports['history_test'] = function (test) {
    test.expect(2);
    return pubnub.history({
        limit: 1,
        channel: channel,
        callback: function (messages) {
            test.ok(messages);
            test.ok(messages[0].test === "test");
            test.done();
        }
    });
};

exports['subscribe_test'] = function (test) {
    var test_channel;
    test_channel = channel;
    test.expect(2);
    return pubnub.subscribe({
        channel: test_channel,
        connect: function () {
            return publish_dummy(test_channel);
        },
        callback: function (message) {
            test.ok(message);
            test.ok(message.test === "test");
            test.done();
            return { stop: true };
        }
    });
};