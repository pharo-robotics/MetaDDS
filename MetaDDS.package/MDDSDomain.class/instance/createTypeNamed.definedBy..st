as yet unclassified
createTypeNamed: aName definedBy: aDefinition
	^ MDDSType
		domain: self
		name: aName
		marshaller: aDefinition typeBuilder buildTypeMarshaller
		md5sum: aDefinition md5sum