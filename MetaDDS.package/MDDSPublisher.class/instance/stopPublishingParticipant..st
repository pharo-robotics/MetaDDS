as yet unclassified
stopPublishingParticipant: aParticipant
	
	(self publicationFor: aParticipant ifNone: [ 
		self error: ' There is no publication to stop for the given participant' 
	 ]) stopPublishing.
	