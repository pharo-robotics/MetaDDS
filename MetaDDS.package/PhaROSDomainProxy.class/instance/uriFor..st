abstract
uriFor: aParticipantMirror
	^ 'http://{1}:{2}/' format: { self ip . (exposures detect: [ :e | e itExposes: aParticipantMirror ]) port }.