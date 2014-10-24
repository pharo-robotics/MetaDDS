basic-calls-tests
testTopicsCreatedAreAlwaysTheSameEvenWithHandCraftedDescriptor
	| topicDescriptor handCrafted | 
	
	topicDescriptor := topics anyOne.
	handCrafted := MDDSTopicDescriptor domain: domainMirror domain name: topicDescriptor name  type: topicDescriptor type.
	
	self assert: topicDescriptor createTopic = handCrafted createTopic.