as yet unclassified
hasSubscriptionFor: aParticipant
	^ subscriptions contains: [ :each | each participant = aParticipant ] 