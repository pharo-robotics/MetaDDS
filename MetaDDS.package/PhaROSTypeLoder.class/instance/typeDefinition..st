initialization
typeDefinition: aTypeId
	^ builtinTypes
		at: aTypeId
		ifAbsent: [ 
			| type |
			type := registry at: aTypeId ifAbsentPut: [ #loading ].
			type == #loading
				ifTrue: [ registry at: aTypeId put: (self loadTypeDefinition: aTypeId) ]
				ifFalse: [ type ] ]