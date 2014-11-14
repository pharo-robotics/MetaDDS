as yet unclassified
testInvalidMD5HeaderIsInvalid
	self deny: (petition validateAndProcessHeader: self headerWrongSum)