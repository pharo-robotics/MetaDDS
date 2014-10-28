as yet unclassified
testSubscriptionLaunchesEvent

	domain when: MDDSIsSubscribedAnnouncement send:#setBoolean to: self.
	
	self resetBoolean.
	self deny: boolean.
	
	subscriber subscribe: participant.
	
	self assert: boolean.