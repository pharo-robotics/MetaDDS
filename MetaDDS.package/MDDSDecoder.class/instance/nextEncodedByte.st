decoding
nextEncodedByte
	self verifyDataAvailability.
	^ stream next