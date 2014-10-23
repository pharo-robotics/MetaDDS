as yet unclassified
testPublishingLaunchesEvent
	| test |
	test := false.
	domain when: MDDSIsPublishingAnnouncement do: [  test := true ].
	publisher publishing: participant.
	
	self assert: test.
	