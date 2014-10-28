creation
publishing: aMDDSDomainParticipant
	^ publications
		detect: [ :each | each isPublishing: aMDDSDomainParticipant ]
		ifNone: [ 
			| publication |
			publication := MDDSPublication publishing: aMDDSDomainParticipant with: topic type marshaller.
			publication connectionOffer: (MDDSConnectionOffer publisher: self participant: aMDDSDomainParticipant).
			publication startPublishing.
			publications add: publication.
			domain note: (MDDSTopicAnnouncement participant: aMDDSDomainParticipant isNowPublishingOn: self through: publication).
			publication ]