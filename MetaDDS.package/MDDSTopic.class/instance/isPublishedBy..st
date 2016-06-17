testing
isPublishedBy: aParticipant
	^ self hasPublications and: [ publisher hasPublicationFor: aParticipant ]