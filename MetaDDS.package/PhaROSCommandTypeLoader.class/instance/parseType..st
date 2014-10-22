loading
parseType: aTypeToken
	| openBraket closeBraket innerType |
	"
		Possible types
		Type
		Type[]
		Type[N]
	"
	openBraket := aTypeToken indexOf: $[.
	openBraket = 0
		ifTrue: [ 
			" Is a common type "
			^ self typeDefinition: aTypeToken ].
	closeBraket := aTypeToken indexOf: $].
	innerType := self typeDefinition: (aTypeToken copyFrom: 1 to: openBraket - 1).
	^ MDDSBasicTypeDefinition
		for:
			(openBraket + 1 = closeBraket
				ifTrue: [ 
					" Is a typed array  "
					MDDSArrayType ofType: innerType ]
				ifFalse: [ 
					" Is a typed array with fixed size "
					MDDSArrayFixedLenghtType of: (aTypeToken copyFrom: openBraket + 1 to: closeBraket - 1) ofType: innerType ])