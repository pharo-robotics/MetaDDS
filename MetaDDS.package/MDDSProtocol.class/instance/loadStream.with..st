as yet unclassified
loadStream: aStream with: aTypeMarshaler
	^ aTypeMarshaler decode:  (self createDecoderOn: aStream with: aTypeMarshaler ).
	