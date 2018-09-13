as yet unclassified
nextEncodedFloat32
	| value |
	self verifyDataAvailability: 4.
	value := Float fromIEEE32BitByteArray: (stream next: 4).
	^ value isNaN
		ifTrue: [ value ]
		ifFalse: [ value roundUpTo: self minimumPrecision ]