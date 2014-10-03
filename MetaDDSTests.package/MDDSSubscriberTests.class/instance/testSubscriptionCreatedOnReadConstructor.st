as yet unclassified
testSubscriptionCreatedOnReadConstructor
	| or  |
	
	or := [ : val |  ].

	
	subscription := subscriber forParticipant: participant onRead: or.
	
	self assert: ( subscription isKindOf: MDDSSubscription ).
	self assert: ( subscription onRead = or ).
	