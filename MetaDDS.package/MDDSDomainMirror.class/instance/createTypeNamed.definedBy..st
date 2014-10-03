accessing
createTypeNamed: aName definedBy: aDefinition
	^ MDDSType domain: domain name: aName serializer: aDefinition typeBuilder buildTypeSerializer md5sum: aDefinition md5sum.