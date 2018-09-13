as yet unclassified
testConnections

	
	publication :=  publisher publishing: participant.
	subscription := subscriber forParticipant: participant onRead: [ : val | ].
		
	self assert: publication connections size = 1.
	self assert: subscription connections size = 1.
	
