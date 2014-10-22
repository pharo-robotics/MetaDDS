as yet unclassified
= anOtherHeader
	^ (anOtherHeader isKindOf: MDDSHandshakeHeader) and: [ self attributes asSet = anOtherHeader attributes asSet ]