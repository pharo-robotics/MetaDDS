as yet unclassified
rosheaderDefinition
	^ headerDefinition ifNil: [ headerDefinition := MDDSBasicTypeDefinition for: (MDDSHeaderType new).]