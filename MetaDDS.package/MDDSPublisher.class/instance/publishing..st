creation
publishing: aMDDSDomainParticipant 
	
	^ publications detect: [ : each | 
			each isPublishing: aMDDSDomainParticipant  
		] ifNone: [ 
			publications add: (MDDSPublication publishing: aMDDSDomainParticipant for: self with: topic type marshaller)
		].