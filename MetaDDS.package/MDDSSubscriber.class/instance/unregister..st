registry
unregister: aSubscription
	subscriptions remove: aSubscription.
	subscriptions isEmpty
		ifTrue: [ domain note: (MDDSTopicAnnouncement participant: aSubscription participant isNotSubscribedAnymoreTo: self) ]