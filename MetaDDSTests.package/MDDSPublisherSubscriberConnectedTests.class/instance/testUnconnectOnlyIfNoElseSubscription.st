as yet unclassified
testUnconnectOnlyIfNoElseSubscription
	self testConnections.
	subscriber unregister: subscription.
	
	
	self assert: publication connections size = 0.
	self assert: subscription connections size = 0.