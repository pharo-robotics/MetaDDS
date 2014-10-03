as yet unclassified
expose: aParticipantMirror
		
		(self isExposed: aParticipantMirror) ifFalse: [ 
			| exposure |
			exposure := PhaROSParticipantExposure participantMirror: aParticipantMirror.
			exposure port: (self obtainPort).
			exposure expose.
			self registerExposure: exposure.
		].
		^ aParticipantMirror
		