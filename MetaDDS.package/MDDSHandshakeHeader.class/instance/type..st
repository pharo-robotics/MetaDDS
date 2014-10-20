accessing
type: aValue
	(self attribute: 'type')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'type' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]