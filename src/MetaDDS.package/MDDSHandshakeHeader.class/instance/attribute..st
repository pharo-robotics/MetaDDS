accessing
attribute: aName
	^ self attributes detect: [ :attr | attr name = aName ] ifNone: nil