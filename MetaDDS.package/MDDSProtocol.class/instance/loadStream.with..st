as yet unclassified
loadStream: aStream with: aSerializer
	^ aSerializer decode:  (self createDecoderOn: aStream).
	