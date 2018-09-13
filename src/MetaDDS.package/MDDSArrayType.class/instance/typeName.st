accessing
typeName
	^ (relatedType ifNil: [ '?' ] ifNotNil: [ :t | t typeName ]) , '[]'