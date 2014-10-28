testing
isDead
	^ socket isNil or: [ socket isConnected not ]