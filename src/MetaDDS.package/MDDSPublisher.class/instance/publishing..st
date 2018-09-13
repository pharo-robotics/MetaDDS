creation
publishing: aMDDSDomainParticipant
	^ publications
		detect: [ :each | each isPublishing: aMDDSDomainParticipant ]
		ifNone: [ 
			| publication |
			publication := domain createPublicationFor: aMDDSDomainParticipant with: topic type.
			publications add: publication.
			publication noteIsRegisteredIn: self.			
			domain note: (MDDSTopicAnnouncement participant: aMDDSDomainParticipant isNowPublishingOn: self through: publication).
			publication ]