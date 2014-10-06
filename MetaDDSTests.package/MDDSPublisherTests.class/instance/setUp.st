as yet unclassified
setUp
	super setUp.
	participant := self participant.
	topic := self rosout.
	publisher := topic publisher.
	domain addProtocol: PhaROSTCPProtocol new. 