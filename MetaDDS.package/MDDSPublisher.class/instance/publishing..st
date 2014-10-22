creation
publishing: aMDDSDomainParticipant
	^ publications
		detect: [ :each | each isPublishing: aMDDSDomainParticipant ]
		ifNone: [ 
			| publication |
			publication := MDDSPublication publishing: aMDDSDomainParticipant for: self with: topic type marshaller.
			publication startPublishing.
			publications add: publication.
			domain registerTopicPublisher: self for: aMDDSDomainParticipant.
			publication ]