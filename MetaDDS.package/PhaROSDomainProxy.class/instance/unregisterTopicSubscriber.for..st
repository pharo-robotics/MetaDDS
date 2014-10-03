abstract
unregisterTopicSubscriber: aTopic for: aParticipantMirror
	|  retrieved |
	
	retrieved := rosproxy unregisterSubscriber: aParticipantMirror name from: aTopic name andCallerUri: (self uriFor: aParticipantMirror).
	
	self assert: retrieved = 1 description: 'Trying to unsubscribe twice' .