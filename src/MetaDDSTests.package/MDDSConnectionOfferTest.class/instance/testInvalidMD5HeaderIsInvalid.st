as yet unclassified
testInvalidMD5HeaderIsInvalid
	self deny: (offer validateAndProcessHeader: self headerWrongSum)