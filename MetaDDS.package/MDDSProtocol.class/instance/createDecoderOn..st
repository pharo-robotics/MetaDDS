as yet unclassified
createDecoderOn: aStream
	|  aDecoder |
	aDecoder  := decoder on: aStream.
	
	self initializeDecoder: aDecoder.
	
	^ aDecoder. 
	
	