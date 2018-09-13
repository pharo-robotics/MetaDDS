as yet unclassified
testInvalidTopicTypeHeaderIsInvalid
	self deny: (offer validateAndProcessHeader: self headerWrongTopicType)