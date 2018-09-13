testing
isRegistered
	| subscriberRegistered publisherRegistered |
	subscriberRegistered := false.
	publisherRegistered := false.
	subscriber ifNotNil: [ subscriberRegistered := subscriber isRegistered ].
	publisher ifNotNil: [ publisherRegistered := publisher isRegistered ].
	^ subscriberRegistered or: publisherRegistered