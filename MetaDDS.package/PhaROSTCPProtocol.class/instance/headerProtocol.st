as yet unclassified
headerProtocol
	^ headerProtocol ifNil: [ 
		headerProtocol  := 
		MDDSHeaderProtocol encoding: MDDSHeaderEncoder  decoding: MDDSHeaderDecoder serializing: self rosheader
	].