testing
hasPublications
	^ publisher ifNil: [ false ] ifNotNil: [ self publications size > 0 ]