as yet unclassified
testInvalidMD5HeaderIsInvalid
	self deny: (offer validateHeader: self headerWrongSum)