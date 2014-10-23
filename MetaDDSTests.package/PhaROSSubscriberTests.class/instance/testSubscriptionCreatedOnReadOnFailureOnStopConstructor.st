as yet unclassified
testSubscriptionCreatedOnReadOnFailureOnStopConstructor
	| or of os |
	
	or := [ : val |  ].
	of := [ :  fail |  ].
	os := [  " " ].
	
	subscription := subscriber forParticipant: participant onRead: or onFailure: of onStop: os.
	
	self assert: ( subscription isKindOf: MDDSSubscription ).
	self assert: ( subscription onRead = or ).
	self assert: ( subscription onFailure = of ).
	self assert: ( subscription onStop = os ).