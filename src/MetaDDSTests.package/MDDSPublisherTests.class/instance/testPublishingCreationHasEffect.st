as yet unclassified
testPublishingCreationHasEffect
	
	publisher publishing: participant.
	self assert: (publisher publications size = 1).
	
	