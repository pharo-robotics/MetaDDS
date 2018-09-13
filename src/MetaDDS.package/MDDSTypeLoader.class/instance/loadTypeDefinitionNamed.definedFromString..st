abstract
loadTypeDefinitionNamed: aName definedFromString: aStringDefinition
	| definition |
	definition := STON reader
		on: aStringDefinition readStream;
		next.
	self registerTypeDefinition: definition.
	^ definition