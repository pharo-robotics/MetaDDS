as yet unclassified
typeDefinition: aTypeId ifAbsent: aBlock
	^ registry at: aTypeId ifAbsent: aBlock.