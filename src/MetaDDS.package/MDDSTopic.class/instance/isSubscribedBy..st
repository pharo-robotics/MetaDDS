testing
isSubscribedBy: aParticipant
	^ self hasSubscriptions and: [ publisher hasSubscriptionFor: aParticipant ]