as yet unclassified
setUp
	super setUp.
	participant := self participant.
	topic := self adhoc.
	subscriber := topic subscriber.
	domain addProtocol: DDSTCPProtocol new. 