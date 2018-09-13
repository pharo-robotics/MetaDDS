accessing
registerConnection: aConnection
	" Now i should make a difference between subscriptions in terms of participant and where the connection is coming from. "

	connections add: aConnection.
	aConnection messageDispatcher: self.
	aConnection noteIsRegistered.