as yet unclassified
testSubscriptionLaunchesEvent
	| test |
	test := false.
	domain when: MDDSIsSubscribedAnnouncement do: [  test := true ].
	subscriber subscribe: participant.
	self assert: test.