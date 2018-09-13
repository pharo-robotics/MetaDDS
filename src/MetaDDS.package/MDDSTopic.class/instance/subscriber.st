accessing
subscriber
	^ subscriber
		ifNil: [ 
			(publisher isNotNil and: [ domain supportSubscriberPublisher not ])
				ifTrue: [ self error: 'We do not support to subscriber and publish the same topic' ]
				ifFalse: [ subscriber := domain subscriberFor: self ] ]