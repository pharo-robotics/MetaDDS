as yet unclassified
createType
	^ self isUnknown
		ifTrue: [ domain createTypePlaceHolder ]
		ifFalse: [ domain createTypeNamed: name definedBy: self definition ]