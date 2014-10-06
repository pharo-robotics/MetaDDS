as yet unclassified
testStopPublishing

	publisher publishing: participant.
	self assert: (publisher publications size = 1).
	publisher stopPublishing: participant.		
	self assert: (publisher publications size = 0).