as yet unclassified
testSubscriptionUnSubscribedLaunchesEvent
	| test |
	test := false.
	domain when: MDDSIsNotSubscribedAnnouncement do: [  test := true ].
	self testSubscriptionSubscribed.
	subscriber unregister: subscription.
	self assert: test.