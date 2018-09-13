private
registerIfNeeded: aParticipant creatingSubscriptionWith: aBlock
	^ self subscriptionFor: aParticipant ifNone: [ self register: aBlock value ]