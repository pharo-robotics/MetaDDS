expected-system
testFindTopicByName
	self assert: (domainMirror findTopicByName: '/rosout' ifNone: [ nil ]) isNotNil .