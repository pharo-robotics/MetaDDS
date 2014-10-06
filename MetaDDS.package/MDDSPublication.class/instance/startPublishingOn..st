accessing
startPublishingOn: aPort
	servers :=  participant protocols collect: [ : protocol | 
		MDDSPublicationServer startOn: (participant obtainPortFor: protocol) for: protocol onNewClient: [ 
			: writingConnection | self register: writingConnection.
		 ] 
	].