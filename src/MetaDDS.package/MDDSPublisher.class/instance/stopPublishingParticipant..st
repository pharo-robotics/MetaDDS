as yet unclassified
stopPublishingParticipant: aParticipant
	| publication | 
	publication := self publicationFor: aParticipant ifNone: [ self error: ' There is no publication to stop for the given participant' ].
	self stopPublishing: publication.