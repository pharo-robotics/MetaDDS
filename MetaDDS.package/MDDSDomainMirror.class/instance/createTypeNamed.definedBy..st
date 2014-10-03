accessing
createTypeNamed: aName definedBy: aDefinition
	^ MDDSType domain: domain name: aName marshaller: aDefinition typeBuilder buildTypeMarshaller md5sum: aDefinition md5sum.