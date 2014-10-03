as yet unclassified
testSubscriptionSubscribed
	subscription := subscriber subscribe: participant  .
	self assert: (subscriber subscriptions size = 1)