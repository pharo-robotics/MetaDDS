as yet unclassified
testSubscriptionUnSubscribed
	self testSubscriptionSubscribed.
	subscriber unregister: subscription.
	self assert: subscriber subscriptions size = 0