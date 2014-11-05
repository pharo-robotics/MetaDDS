as yet unclassified
participantDescriptorFor: aCallerId connectedAt: anUri
	^ participants detect: [ : p | p name = aCallerId  ] ifNone: [ 
		| participant |
		participant := MDDSParticipantDescriptor domain: self name: aCallerId uri: anUri.
		participants add: participant.
		participant.
	 ]