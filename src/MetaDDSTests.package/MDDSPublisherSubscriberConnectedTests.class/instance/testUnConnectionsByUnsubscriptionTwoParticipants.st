as yet unclassified
testUnConnectionsByUnsubscriptionTwoParticipants
	| subscription2  participant2 | 
	self testConnections.
	
	participant2 := MDDSDomainParticipant domain: domain name: 'adhoc-participant2'.
	
	subscription2 := subscriber forParticipant: participant2 onRead: [ : val | ].
	self assert: publication connections size = 2.
	self assert: subscription connections size = 1.
	self assert: subscription2 connections size = 1.
	subscriber unregister: subscription. 	
	self assert: publication connections size = 1.
	self assert: subscription connections size = 0.
	
	subscriber unregister: subscription2.
	self assert: publication connections size = 0.
	self assert: subscription2 connections size = 0.
	