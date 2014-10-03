tests
testCreatePublisher
	
	self assert: (rosout publisher isKindOf: MDDSPublisher).
	