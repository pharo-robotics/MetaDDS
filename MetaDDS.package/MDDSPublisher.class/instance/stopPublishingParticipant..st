as yet unclassified
stopPublishingParticipant: aParticipant
	
	(publications detect: [ : each | each participant = aParticipant ]) stopPublishing.
	