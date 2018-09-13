abstract
typeDefinition: aString 
	^ self typeDefinition: aString  ifAbsent: [ self error: 'There is not type named ', aString ]