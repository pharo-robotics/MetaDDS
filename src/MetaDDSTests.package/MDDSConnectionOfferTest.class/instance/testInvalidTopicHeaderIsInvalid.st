as yet unclassified
testInvalidTopicHeaderIsInvalid
	self deny: (offer validateAndProcessHeader: self headerWrongTopic)