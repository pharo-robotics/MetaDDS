as yet unclassified
createConnectionFor: aProtocol on: aSocket and: aStream for: aParticipantName
	^ self
		noteNewConnection:
			(MDDSWritingNetworkConnection with: aProtocol for: aSocket representing: aParticipantName)