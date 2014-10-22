accessing
typeDefinition: aType
	self assert: (aType isKindOf: MDDSTypeBuilder) not.
	typeDefiniton := aType