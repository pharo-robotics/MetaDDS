accessing
constant: aFieldName 
	^ self findConstant: aFieldName ifNone: [  MDDSError signal:  aFieldName, ' is not a valid field ' ].