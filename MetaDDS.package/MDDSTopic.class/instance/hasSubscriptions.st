testing
hasSubscriptions
	^ subscriber ifNil: [ false ] ifNotNil: [ self subscriptions size > 0 ]