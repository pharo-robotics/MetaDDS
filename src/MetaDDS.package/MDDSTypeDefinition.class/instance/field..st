accessing
field: aFieldName 
	^ self findField: aFieldName ifNone: [  MDDSError signal:  aFieldName, ' is not a valid field ' ].