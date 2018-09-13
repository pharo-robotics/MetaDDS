abstract
typeDefinition: aTypeName ifAbsent: aBlock
	^ registry at: aTypeName ifAbsent: aBlock.