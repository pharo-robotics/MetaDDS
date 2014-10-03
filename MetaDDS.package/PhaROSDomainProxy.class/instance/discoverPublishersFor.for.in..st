abstract
discoverPublishersFor: aSubscriber for: aParticipantMirror	in: aDomain
	| urls | 
	urls := rosproxy registerSubscriber: aParticipantMirror name to: aSubscriber topic name with:aSubscriber topic type name andCallerUri: (self uriFor: aParticipantMirror).
	discovery manage: urls for: aSubscriber with: aParticipantMirror in: aDomain.