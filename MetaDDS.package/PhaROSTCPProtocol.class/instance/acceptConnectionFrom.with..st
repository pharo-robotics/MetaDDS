as yet unclassified
acceptConnectionFrom: aSocketListener with: aConnectionOffer
	| socket stream | 

	socket := aSocketListener accept.
	stream := SocketStream on: socket.
	stream binary.
	
	self shakeHandsWith: socket and: stream accordingTo: aConnectionOffer.
	
	^ MDDSReadingConnection protocol: self socket: socket stream: stream. 