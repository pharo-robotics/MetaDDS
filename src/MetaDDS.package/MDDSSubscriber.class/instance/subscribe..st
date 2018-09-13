as yet unclassified
subscribe: aParticipant
	^ self registerIfNeeded: aParticipant creatingSubscriptionWith: [ domain createSubscriptionFor: aParticipant ]