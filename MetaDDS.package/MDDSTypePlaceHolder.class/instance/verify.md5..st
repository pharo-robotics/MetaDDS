as yet unclassified
verify: aTypeName md5: aMd5Sum
	(self isUndefined and: [ name = aTypeName ])
		ifTrue: [ self assert: name = aTypeName ]
		ifFalse: [ name := aTypeName ].
	md5sum := aMd5Sum.
	^ true