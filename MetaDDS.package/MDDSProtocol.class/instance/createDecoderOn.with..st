as yet unclassified
createDecoderOn: aStream with: aTypeMarshaller
	| aDecoder |
	aDecoder := decoder on: aStream.
	self initializeDecoder: aDecoder with: aTypeMarshaller.
	^ aDecoder