registry
unregister: aSubscription
	subscriptions remove: aSubscription.
	subscriptions isEmpty
		ifTrue: [ domain unregisterTopicSubscriber: self for: aSubscription participant ]