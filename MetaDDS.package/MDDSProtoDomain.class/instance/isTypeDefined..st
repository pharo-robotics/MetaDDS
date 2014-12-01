abstract
isTypeDefined: aTypeName
	self typeDefinition: aTypeName ifAbsent: [ ^ false ].
	^ true.