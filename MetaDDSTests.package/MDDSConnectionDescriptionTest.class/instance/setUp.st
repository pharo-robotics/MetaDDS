as yet unclassified
setUp
	topic := MDDSTopic domain: nil name: '/test' type: (MDDSType domain: nil name: '/test_type' marshaller: nil md5sum: 'abc' ).
	 
	interactor := MDDSTopicInteractorMock new.
	interactor topic: topic. 
	
	participant := MDDSParticipantMock new. 