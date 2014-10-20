ros-xml-reponses
requestTopic: aCallerId for: aTopicName availableFor: anArrayOfProtocols
	^ 
	{ 1 . 'Protocols' .
	((participantMirror publications detect: [ : s |  s topic name = aTopicName ]) publicationServers collect: [ 
		: server | { server protocol name . (NetNameResolver stringFromAddress: server ip) . server port }
	] ) anyOne asArray} .
	
						 