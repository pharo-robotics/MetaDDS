as yet unclassified
removePublication: aPublication
	publications remove: aPublication.
	self publicationFor: aPublication participant ifNone: [  
		domain unregisterTopicPublisher: self for: aPublication participant.
	].