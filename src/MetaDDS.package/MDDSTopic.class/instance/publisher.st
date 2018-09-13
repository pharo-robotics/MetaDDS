accessing
publisher
	^ publisher
		ifNil: [ 
			(subscriber isNotNil and: [ domain supportSubscriberPublisher not ])
				ifTrue: [ self error: 'We do not support to subscriber and publish the same topic' ]
				ifFalse: [ publisher := MDDSPublisher domain: domain named: name , '-publisher' on: self ] ]