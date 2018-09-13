as yet unclassified
testUnConnectionsByUnpublishment

	self testConnections.
	publisher stopPublishing: publication.
	
	
	self assert: publication connections size = 0.
	self assert: subscription connections size = 0.