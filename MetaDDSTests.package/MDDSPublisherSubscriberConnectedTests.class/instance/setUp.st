as yet unclassified
setUp
	super setUp.
	participant := self participant.
	topic := self adhoc.
	publisher := topic publisher.
	subscriber := topic subscriber.
	domain addProtocol: MDDSProtocol new. 
	
