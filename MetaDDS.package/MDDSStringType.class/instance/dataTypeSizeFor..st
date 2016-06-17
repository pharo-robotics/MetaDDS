accessing
dataTypeSizeFor: aValue
	(self isAPossibleValue: aValue ) ifFalse: [
		self error: 'Unexpected value'.
	].
	^ aValue size + 4.