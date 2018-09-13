abstract
subscriberFor: aTopic
	^ MDDSSubscriber domain: self named: aTopic name , '-subscriber' on: aTopic