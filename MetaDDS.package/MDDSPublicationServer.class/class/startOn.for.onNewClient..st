as yet unclassified
startOn: aPort for: aProtocol onNewClient: aBlock 
	^ self new port: aPort; protocol: aProtocol; onNewClient: aBlock; yourself.