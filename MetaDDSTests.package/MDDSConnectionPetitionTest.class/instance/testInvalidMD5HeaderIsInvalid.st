as yet unclassified
testInvalidMD5HeaderIsInvalid
	self deny: (petition validateHeader: self headerWrongSum)