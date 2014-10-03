accessing
unserialize: aStream
	| decoder aByteArray | 
	
	aByteArray  := aStream next: self dataTypeSize.
	
	aByteArray size = self dataTypeSize ifFalse: [
		PhaROSUnexpextedValue signal:' Unexpected Value'.
	].

	decoder := MDDSDecoder on: (ReadStream on: aByteArray).
	self decode: decoder. 
	
	