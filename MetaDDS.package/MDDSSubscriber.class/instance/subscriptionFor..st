as yet unclassified
subscriptionFor: aParticipant 
	^ self subscriptionFor: aParticipant ifNone: [ self error: 'There is not subscription for the given participant' ]. 