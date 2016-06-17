accessing
verify: aTypeName md5: aMd5Sum
	(self isUndefined and: [ name = aTypeName ])
		ifTrue: [ self assert: name equals: aTypeName ]
		ifFalse: [ name := aTypeName ].
	md5sum := aMd5Sum.
	^ true