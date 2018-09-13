as yet unclassified
testStopPublishing

	publisher publishing: participant.
	self assert: (publisher publications size = 1).
	publisher stopPublishingParticipant: participant.		
	self assert: (publisher publications size = 0).