expected-system
testThereAreTopics
	| topics |
	
	topics := domainMirror topics.
	self assert: topics isNotEmpty.
	