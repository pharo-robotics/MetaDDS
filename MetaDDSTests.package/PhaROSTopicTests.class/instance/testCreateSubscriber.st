tests
testCreateSubscriber
	
	self assert: (rosout subscriber isKindOf: MDDSSubscriber).
	