as yet unclassified
publicationFor: aParticipant ifNone: aBlock
	^ publications detect: [ :each | each participant = aParticipant ] ifNone: aBlock