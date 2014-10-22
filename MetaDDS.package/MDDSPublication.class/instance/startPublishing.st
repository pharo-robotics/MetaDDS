accessing
startPublishing
	servers := participant protocols
		collect: [ :protocol | 
			MDDSPublicationServer
				startOn: participant ip
				at: (participant obtainPortFor: protocol)
				for: protocol
				offering: self createConnectionOffer
				onNewClient: [ :writingConnection | self register: writingConnection ] ]