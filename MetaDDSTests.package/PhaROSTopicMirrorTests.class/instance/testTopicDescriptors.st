shape-tests
testTopicDescriptors
	
	self assert: ( topics allSatisfy: [  : topic | topic isKindOf: MDDSTopicDescriptor ]).
	
	