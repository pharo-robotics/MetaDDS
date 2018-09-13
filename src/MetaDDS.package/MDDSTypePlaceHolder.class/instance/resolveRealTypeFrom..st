as yet unclassified
resolveRealTypeFrom: aHeader
	^ domain
		createTypeNamed: name
		definedBy: (domain loadTypeDefinitionNamed: name definedFromString: aHeader message_definition)