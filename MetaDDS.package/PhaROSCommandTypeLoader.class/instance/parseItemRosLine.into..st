loading
parseItemRosLine: aLine into: aClass
	| fieldType fieldName |
	fieldType := self parseType: (($  split: aLine) at: 1).
	fieldName := ($  split: aLine) at: 2.
	^ aClass name: fieldName type: fieldType