testing
isAPossibleValue: aTime 
	^ (aTime isKindOf: MDDSTimestamp) and: [
		aTime seconds  < 4294967296 and: [
			aTime nanoSeconds  < 4294967296 
		]
	].