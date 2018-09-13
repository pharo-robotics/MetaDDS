Object that manage the publishing to a topic. Used to publish
publisher := topic publisher.

publisher publish:  something.
publisher publish: [ : t | t fillupWith: something ].

topic publish: something.

There is just one publisher per topic in an image. It is thread safe