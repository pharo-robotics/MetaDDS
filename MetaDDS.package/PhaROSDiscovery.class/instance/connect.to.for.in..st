as yet unclassified
connect: anUrl to: aSubscriber for: aParticipantMirror  in: aDomain
	| proxy | 
	proxy := PhaROSParticipantProxy on: anUrl.
	[ 
		| protocol petition connection |
		
		petition := proxy possibleConnectionsFor: aSubscriber for: aParticipantMirror in: aDomain. 
		
		protocol := aDomain protocols detect: [ : prtcl | petition itIsSupportedBy: prtcl. ] 
						ifNone: [ PhaROSError signal: 'There is no support for ', petition protocolName. ].
		connection := protocol connect: petition.
		connection urlrpc: anUrl.
		
		aSubscriber registerConnection: connection.

	] on: PhaROSError do: [ 
		self increaseBlacklistCounterFor: anUrl.
     ]