abstract
registerTopicPublisher: aPublisher for: aParticipantMirror in: aDomain
	rosproxy
		registerPublisher: aParticipantMirror name
		to: aPublisher topic name
		with: aPublisher topic type name
		andCallerUri: (self uriFor: aParticipantMirror)