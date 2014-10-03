abstract
registerTopicSubscriber: aSubscriber for: aParticipantMirror in: aDomain
	
	rosproxy registerSubscriber: aParticipantMirror name to: aSubscriber topic name with:aSubscriber topic type name andCallerUri: (self uriFor: aParticipantMirror).
	
	HeartbeatAnnouncer on: PhaROSHeartbeat do: [  
		aSubscriber registerAll: (self discoverPublishersFor: aSubscriber for: aParticipantMirror in: aDomain).
	 ].
	
	
	
	