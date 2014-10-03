basic-calls-tests
testCreateTopic
	(topics collect: #createTopic) allSatisfy: [ : t  | 
		t isKindOf: MDDSTopic	
	]