as yet unclassified
unsubscribe: aParticipant
	^ self unregister: (self subscriptionFor: aParticipant ifNone: [ self error: ' There is not any subscription for the given Participant '])