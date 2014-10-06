as yet unclassified
itIsSupportedBy: aProtocol
	^ participant protocols anySatisfy: [ : p | p name = aProtocol name ].