as yet unclassified
reflectParticipant: aMDDSParticipant
	| mirror |
	mirror := MDDSDomainParticipantMirror domain: self name: aMDDSParticipant name participant: aMDDSParticipant.
	self expose: mirror.
	
	^ mirror.