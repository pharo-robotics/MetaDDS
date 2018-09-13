accessing
destroy
	messageDispatcher noteStop: self.
	messageDispatcher := nil.
	socket ifNotNil: [ socket close ].
	socket := nil.
	stream ifNotNil: [ stream close ].
	stream := nil.
	protocol := nil.
	self stop