abstract
uriFor: aParticipantMirror
	^ 'http://{1}:{2}/' format: { self ip . (self exposureFor: aParticipantMirror ) port }.