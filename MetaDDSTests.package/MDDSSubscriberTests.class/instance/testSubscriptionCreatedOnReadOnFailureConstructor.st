as yet unclassified
testSubscriptionCreatedOnReadOnFailureConstructor
	| or of  |
	
	or := [ : val |  ].
	of := [ :  fail |  ].
	
	subscription := subscriber forParticipant: participant onRead: or onFailure: of.
	
	self assert: ( subscription isKindOf: MDDSSubscription ).
	self assert: ( subscription onRead = or ).
	self assert: ( subscription onFailure = of ).
	