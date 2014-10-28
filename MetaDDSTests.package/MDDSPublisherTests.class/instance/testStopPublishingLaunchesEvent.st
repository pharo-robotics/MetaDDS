as yet unclassified
testStopPublishingLaunchesEvent

	domain when: MDDSIsNotPublishingAnnouncement send: #setBoolean to: self.
	
	self resetBoolean.
	self deny: boolean.
	publisher publishing: participant.
	publisher stopPublishingParticipant: participant.		

	self assert: boolean.