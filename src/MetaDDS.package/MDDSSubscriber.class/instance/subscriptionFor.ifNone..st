as yet unclassified
subscriptionFor: aParticipant ifNone: aBlock 
	^ subscriptions detect: [ :each | each participant = aParticipant ] ifNone: aBlock 