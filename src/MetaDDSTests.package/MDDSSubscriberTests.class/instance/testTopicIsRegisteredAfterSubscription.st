as yet unclassified
testTopicIsRegisteredAfterSubscription
	self deny: topic isRegistered.
	subscription := subscriber subscribe: participant.
	self assert: topic isRegistered.
	subscriber unregister: subscription.
	self deny: topic isRegistered.