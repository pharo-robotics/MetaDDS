as yet unclassified
nextEncodedFloat32
	| n barray |
	self verifyDataAvailability: (4 ).
	^( Float fromIEEE32BitByteArray: (stream next:4)) roundUpTo: self minimumPrecision. 
