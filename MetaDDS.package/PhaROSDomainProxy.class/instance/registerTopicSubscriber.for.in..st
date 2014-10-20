abstract
registerTopicSubscriber: aSubscriber for: aParticipantMirror in: aDomain
	| publishers |
	publishers := rosproxy
		registerSubscriber: aParticipantMirror name
		to: aSubscriber topic name
		with: aSubscriber topic type name
		andCallerUri: (self uriFor: aParticipantMirror).
	(self exposureFor: aParticipantMirror) register: publishers for: aSubscriber