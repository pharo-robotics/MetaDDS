as yet unclassified
testInvalidTopicTypeHeaderIsInvalid
	self deny: (petition validateAndProcessHeader: self headerWrongTopicType)