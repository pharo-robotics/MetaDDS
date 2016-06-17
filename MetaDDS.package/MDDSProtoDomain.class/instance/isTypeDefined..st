testing
isTypeDefined: aTypeName
	self typeDefinition: aTypeName ifAbsent: [ ^ false ].
	^ true.