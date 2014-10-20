basic-calls-tests
testCreateTopic
	self assert: ((topics collect: #createTopic) allSatisfy: [ : t  | 
		t isKindOf: MDDSTopic	
	])