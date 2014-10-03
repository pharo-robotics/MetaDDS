converting
valueForGeneration
	^ ((self typeDefinition isKindOf: MDDSBasicTypeDefinition) and:[ self typeDefinition typeSerializer isKindOf: MDDSStringType ] ) ifTrue: [ '''{1}''' format: { value asString } ] ifFalse: [ value asString ].