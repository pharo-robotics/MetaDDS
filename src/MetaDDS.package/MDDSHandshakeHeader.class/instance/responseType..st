as yet unclassified
responseType: aValue
	(self attribute: 'response_type')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'response_type' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]