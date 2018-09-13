accessing
participant
	^ participant ifNil: [  participant := domain createParticipantFor: self ] .