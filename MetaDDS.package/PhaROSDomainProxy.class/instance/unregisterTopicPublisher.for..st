abstract
unregisterTopicPublisher: aPublisher for: aParticipantMirror
	|  retrieved |
	
	retrieved := rosproxy unregisterPublisher: aParticipantMirror name from: aPublisher topic name andCallerUri: (self uriFor: aParticipantMirror).
	