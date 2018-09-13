accessing
plainDefinition
	^ plainDefinition ifNil: [ plainDefinition := domain plainTypeDefinitionFor: self ]