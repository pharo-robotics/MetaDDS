abstract
typeDefinition: aTypeName ifAbsent: aBlock
	" Level 2 Cache "

	^ typesRegistry at: aTypeName ifAbsentPut: [ proxy typeDefinition: aTypeName ifAbsent: aBlock ]