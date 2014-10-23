expected-system
testUnexistantTopicFindTopicByNameFails

	self should: [ domainMirror findTopicByName: '/not-existant-topics'  ] raise: MDDSError.
	 
	