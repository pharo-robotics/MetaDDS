as yet unclassified
testPublishingLaunchesEvent

	domain when: MDDSIsPublishingAnnouncement send:#setBoolean to: self.
	self resetBoolean.
	self deny: boolean.
	publisher publishing: participant.
	self assert: boolean.
	