as yet unclassified
typeDefinition: aTypeName ifAbsent: aBlock
	^ registry at: aTypeName ifAbsent: aBlock.