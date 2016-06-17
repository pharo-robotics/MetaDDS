comparing
= anOtherHeader
	^ (anOtherHeader isKindOf: self class) and: [ self attributes asSet = anOtherHeader attributes asSet ]