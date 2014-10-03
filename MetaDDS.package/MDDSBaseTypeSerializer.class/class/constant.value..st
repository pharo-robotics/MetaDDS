pseudo-dsl
constant: aTypeName value: aValue 
	^ MDDSConstantDefinition name: aTypeName typedAs: self new withValue: aValue.