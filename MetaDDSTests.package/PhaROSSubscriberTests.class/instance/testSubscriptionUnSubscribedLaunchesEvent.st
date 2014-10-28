as yet unclassified
testSubscriptionUnSubscribedLaunchesEvent

	domain when: MDDSIsNotSubscribedAnnouncement send:#setBoolean to: self.
	self resetBoolean.
	self deny: boolean.
	self testSubscriptionSubscribed.

	subscriber unregister: subscription.
	self assert: boolean.