as yet unclassified
nextEncodedTime
	self verifyDataAvailability: 4 * 2.
	^ MDDSTimestamp fromUnixTime: self nextEncodedUint32 nanoSeconds: self nextEncodedUint32