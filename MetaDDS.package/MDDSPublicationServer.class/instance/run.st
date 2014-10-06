accessing
run
	| socket |
	[ keepRunning and: [listener isConnected] ] whileTrue:[
		socket := protocol acceptConnectionFrom: listener with: self connectionOffer.
		onNewClient value: (MDDSWritingConnection with: protocol for: socket).
	].	
	