as yet unclassified
initializeDecoder: aDecoder with: aTypeMarshaller
	| size |
	size := aDecoder nextEncodedUint32.
	(aTypeMarshaller isAPossibleSize: size)
		ifFalse: [ MDDSError signal: ' Unexpected Value' ].
	size > 20000000
		ifTrue: [ 
			"too long, maybe is a problem in buffer. "
			aDecoder resetBuffers.
			self error: 'Warning. trying to load ' , size asString , ' bytes' ].
	^ aDecoder