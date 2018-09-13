as yet unclassified
createConnectionFor: aProtocol on: aSocket and: aStream for: aParticipantName
	^ MDDSReadingNetworkConnection
		protocol: aProtocol
		socket: aSocket
		stream: aStream
		relatedParticipantName: aParticipantName