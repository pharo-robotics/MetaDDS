basic-calls-tests
testTopicsCreatedAreAlwaysTheSame
	| topicDescriptor | 
	
	topicDescriptor := topics anyOne .
	
	self assert: topicDescriptor createTopic = topicDescriptor createTopic.