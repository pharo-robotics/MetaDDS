registry
register: aSubscription
	(self subcriptionsFor: aSubscription participant) isEmpty
		ifTrue: [ domain registerTopicSubscriber: self for: aSubscription participant ].
	self addSubscription: aSubscription.
	^ aSubscription