as yet unclassified
hasPublicationFor: aParticipant
	^ publications contains: [ :each | each participant = aParticipant ].