as yet unclassified
typeDefinition: typeName
	^ types at: typeName ifAbsent: [  MDDSError signal: 'Unexistant type named ', typeName ].