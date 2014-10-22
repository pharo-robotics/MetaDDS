abstract
unregisterTopicSubscriber: aSubscriber for: aParticipantMirror
	| retrieved |
	retrieved := rosproxy
		unregisterSubscriber: aParticipantMirror name
		from: aSubscriber topic name
		andCallerUri: (self uriFor: aParticipantMirror)