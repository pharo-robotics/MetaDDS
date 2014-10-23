as yet unclassified
testStopPublishingLaunchesEvent
	| test |
	test := false.
	domain when: MDDSIsNotPublishingAnnouncement do: [  test := true ].
	publisher publishing: participant.
	publisher stopPublishingParticipant: participant.		

	self assert: test.