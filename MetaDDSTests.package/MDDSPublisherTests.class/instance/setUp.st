as yet unclassified
setUp
	super setUp.
	participant := self participant.
	topic := self adhoc.
	publisher := topic publisher.
	domain addProtocol: DDSTCPProtocol new. 